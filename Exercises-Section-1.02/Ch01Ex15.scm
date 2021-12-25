#lang sicp

; The sin of an angle in radians can be computed by appriximation sin x = s if x is sufficently small
; and by trigonometric identity

; sin x = 3 sin x/3 - 4 (sin x/3)^3

; to reduce the size of the argument to sin.

; for this exercise sufficently small means mangnitued <= 0.1 radians
; Here's a procedure for this

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
   (if (not (> (abs angle) 0.1))
       angle
       (p (sine (/ angle 3.0)))))

; how many times is proceedure p called when (sine 12.15) is evaluated?
; 5 se below

; (sine 12.15)
; (p (sine 4.05))
; (p (p (sine 1.35)))
; (p (p (p (sine 0.45))))
; (p (p (p (p (sine 0.15)))))
; (p (p (p (p (p (sine 0.05))))))


; what is the order of growth in space and number of steps in terms of "a"
; for (sine a)?
; O(log3 a) (divide by 3 repeatedly so log base 3)