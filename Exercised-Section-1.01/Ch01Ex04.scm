#lang sicp

; uses plus operator when b is greater than 0
; otherwise use the minus operator
; effectively adds absolute value of b
; to a

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))