#lang sicp

(define (f-recursive n)
  (if (< n 3)
      n
      (+
       (f-recursive (- n 1))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3)))
       )))

(define (f n)
  
  (define (f-iter n0 n1 n2 n)
    (define n3 (+ n2 (* 2 n1) (* 3 n0)))
    (if (= n 0)
        n0
        (f-iter n1 n2 n3 (- n 1)))
    )

  (f-iter 0 1 2 n))