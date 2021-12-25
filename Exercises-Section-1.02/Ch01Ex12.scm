#lang sicp

(define (pascal r c)
  (cond ((> c r) -1) ; can have more columns than rows
        ((= c 1) 1) ; base case for left-most column
        ((= c r) 1) ; base case for right-most column
        (else (+ (pascal (- r 1) c) (pascal (- r 1)(- c 1))))
  ))