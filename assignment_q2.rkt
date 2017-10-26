#lang racket


(provide ins_beg)
(provide ins_end)
(provide cout_top_level)
(provide count_instances)
(provide count_instances_tr)
(provide count_instances_trH)
(provide count_instances_deep)




;A

(define (ins_beg el lst)
  
  (cons el lst)
  
)

;B

(define (ins_end el lst)

  (append lst (list el))

)

;C

(define (cout_top_level list)
  (cond [(null? list) 0]
      
      [else (+ 1 (cout_top_level (cdr list)))]
  )
)

;D
(define (count_instances ato list)
  
   (cond ((null? list)0)
         
   ((= ato (car list))(+ 1(count_instances ato (cdr list))))
      
    ((count_instances ato (cdr list)))
    
   )
  
  )

;E

(define (count_instances_trH ato list)

  (count_instances_tr ato list 0)
  
)


(define (count_instances_tr ato list total)
  
   (cond ((null? list) total)
         
   [(= ato (car list)) (count_instances_tr ato (cdr list) (+ total 1))]
   [else (count_instances_tr ato (cdr list) total)  ]
    
    )
   )
  



;F

(define (count_instances_deep ato list)
  
  (cond [(empty? list) 0]
        
        [(list? (car list)) (+ (count_instances_deep ato (car list)) (count_instances_deep ato (cdr list))) ]
     
        [(equal? ato (car list)) (+  1 (count_instances_deep ato (cdr list)))]
        
        [else (count_instances_deep ato (cdr list))]

        )

  )





















