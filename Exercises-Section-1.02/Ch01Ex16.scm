#lang sicp

; design and iterative procedure that calculates an expont


(define (xp b n)
  (define (iter-exp a b n)
    (cond ((= n 0) a)
          ((even? n)(iter-exp a (* b b) (/ n 2)))
          (else (iter-exp (* a b) b (- n 1)))))
  (iter-exp 1 b n))