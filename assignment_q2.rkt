#lang racket


(provide ins_beg)
(provide ins_end)
(provide cout_top_level)


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
