#lang sicp

(define (iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (iter (improve guess x) guess x)))


(define (improve guess x)
  (- guess (/ (-(cube guess) x) (* 3 (square guess)))))


; using percent change in guess and previous-guess
(define (good-enough? guess previous-guess)
  (< (abs (- 1 (/ guess previous-guess))) 0.0001))


(define (square x)
  (* x x))


(define (cube x)
  (* x x x))


(define (cube-root x)
  (iter 1.0 x x))