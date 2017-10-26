#lang racket


;Made these to make testing quisker
(define tree '(((() 1 ()) 6(() 9 ())) 16 ((() 20 ())24 (() 28 ()))))
(define Randtree '(((() 6 ()) 8(() 4 ())) 2 ((() 20 ()) 1 (() 28 ()))))

;Tree Structure
(define (left_child BStree)
  
  (car BStree)
  
)

(define (right_child BStree)
  
  (caddr BStree)
  
)


(define (value BStree)
  
  (cadr BStree)
  
)


;A

(define (Print_Sort BStree);
 (begin
   
   (cond [(not (empty?(left_child BStree))) (Print_Sort (left_child BStree))])

   (printf "~a " (value BStree));
   
   (cond [(not (empty?(right_child BStree))) (Print_Sort (right_child BStree))])

  )

)


;B

(define (exists item BStree)
  (cond
    
    [(null? BStree) #F]
    [(equal? item (value BStree)) #T]
    [(< item (value BStree)) (exists item (left_child BStree))]
    [(> item (value BStree)) (exists item (right_child BStree))]
    
  )
)

;C

(define (insert_item BStree item)
  
  (cond
    [(null? BStree) (list '() item '())]
    
    [(equal? item (cadr BStree)) BStree]
    
    [(< item (cadr BStree)) (list (insert_item (car BStree) item) (cadr BStree) (caddr BStree))]
    
    [else (list (car BStree) (cadr BStree) (insert_item (caddr BStree) item))]
    
    )


  )


;D
(define (insert_list BStree li)
  
  (if (empty? li)
      
     BStree
     
     (insert_list (insert_item BStree (car li)) (cdr li))
     )
  )

  











  