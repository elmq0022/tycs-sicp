#lang sicp

; Exercise 1.17
; Assume the following operations are valid:
; - addition
; - double
; - half
;
; design a multiplication proceedure similar to 
; the fast-exp in exercise 1.16 such that its
; run order is O(ln n) 


(define (double x)
  (+ x x))

(define (half x)
  (/ x 2))

(define (mult x y)
  (cond ((= y 0) 0)
  ((even? y)(mult (double x) (half y)))
  (else (+ x (mult x (- y 1))))))