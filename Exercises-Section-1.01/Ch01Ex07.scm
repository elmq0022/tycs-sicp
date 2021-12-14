#lang sicp

(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))


(define (improve guess x)
  (average guess (/ x guess)))


(define (average x y) 
  (/ (+ x y) 2))


; (define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.001))

; using percent change in guess and x
(define (good-enough? guess previous-guess)
  (< (abs (- 1 (/ guess previous-guess))) 0.0001))


(define (square x)
  (* x x))


(define (sqrt x)
  (sqrt-iter 1.0 x x))
