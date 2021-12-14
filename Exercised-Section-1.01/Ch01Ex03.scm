#lang sicp

(define (largest x y z)
  (cond
    ((and (> x y) (> x z)) x)
    ((and (> y x) (> y z)) y)
    (else z)
  )
)


(define (smallest x y z)
  (cond
    ((and (< x y) (< x z)) x)
    ((and (< y x) (< y z)) y)
    (else z)
  )
)
 

(define (second x y z)
  (define small (smallest x y z))
  (define large (largest x y z))
  (cond
    ((and (< small x) (< x large)) x)
    ((and (< small y) (< y large)) y)
    (else z)
  )
)

(define (square x)(* x x))

(define (square-and-sum-two-largest x y z)
  (+
   (square (largest x y z))
   (square (second x y z))
  )
)

(square-and-sum-two-largest 1 1 1)
(square-and-sum-two-largest 1 2 3)
(square-and-sum-two-largest 1 3 2)
(square-and-sum-two-largest 2 1 3)
(square-and-sum-two-largest 2 3 1)
(square-and-sum-two-largest 3 1 2)
(square-and-sum-two-largest 3 2 1)