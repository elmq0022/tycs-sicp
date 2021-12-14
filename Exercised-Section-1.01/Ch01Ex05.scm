#lang sicp
; Ch01Ex05

; Ben Bitdiddle has invented a test to determine
; whether the interpreter he is faced with is using
; applicative-order evaluation or normal-order
; evaluation. He defines the following two
; procedures:

(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

; Then he evaluates the expression

(test 0 (p))

; Applicative order is bottom up from the evaluation tree
; The above code will get caught in an endless loop when it
; tries to evaluate the expression (p)

; In the normal-order evaluation (p) is never evaluated as
; as (if (= x 0) 0 y) will return x, 0, in this instance

; Normal-Order
; Evaluation model would not evaluate the operands until
; their values were needed. Instead it would first substitute
; operand expressions for parameters until it obtained an
; expression involving only primitive operators, and would
; then perform the evaluation. If we used this method, the
; evaluation of (f 5) would proceed according to the sequence of
; expansions
;
; (sum-of-squares (+ 5 1) (* 5 2))
;
; (+ (square (+ 5 1)) 
;    (square (* 5 2)))
;
; (+ (* (+ 5 1) (+ 5 1)) 
;    (* (* 5 2) (* 5 2)))
;
;
; Applicative-Order
; The interpreter first evaluates the operator and operands
; and then applies the resulting procedure to the resulting
; arguments.