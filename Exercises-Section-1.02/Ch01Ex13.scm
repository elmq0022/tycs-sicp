#lang sicp

; prove by induction

fib(n) = (a^n - b^n)/sqrt(5)

; where a and b are defined as
a = (1 + sqrt(5))/2
b = (1 - sqrt(5))/2

; base case
n = 1
((1 + sqrt(5))/2 - (1 - sqrt(5))/2)/sqrt(5)
(2 sqrt(5))/(2 sqrt(5)) = 1

; inductive step
fib(n+2) = fib(n+1) + fib(n)
a^(n+2) - b^(n+2) = a^(n+1) - b^(n+1) + a^(n) - b^(n)
(a^n)(a^2) - (b^n)(b^2) = a^n(a+1) - b^n(b+1)

; these are the positive values of a and b are the
; golden ratios, the positive and negative roots of

x^2 = x + 1

; the proof by induction holds