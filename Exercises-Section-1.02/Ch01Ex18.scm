#lang sicp

; iterative version of 1.17

(define (mult x y)

  (define (double x)
    (+ x x))

  (define (half x)
    (/ x 2))

  (define (mult-helper a x y)
    (cond ((= y 0) a)
          ((even? y)(mult-helper a (double x) (half y)))
          (else (mult-helper (+ a x) x (- y 1)))))

  (mult-helper 0 x y))