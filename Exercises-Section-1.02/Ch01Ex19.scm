#lang sicp

; finding the transformation
;
; a' = a(p+q) + bq
; b' = aq + bp
;
; b'' = qa' + pb'
; b'' = q(a(p+q) + bq) + p(aq + bp)
; b'' = apq + aq^2 bq^2 + apq + bp^2
; b'' = aq^2 + 2apq + bp^2 + bq^2
; b'' = a(q^2 + pq) + b(p^2 + q^2)
;
; given b' = aq + bp then
;
; p' = (p^2 + q^2)
; q' = (q^2 + pq)
;
; or square the matrix
;
; | p + q | q |
; |   q   | p |
;
; and take the last row of the matrix for q` and p` respectively


(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) 
         b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (* p p) (* q q))     ;compute p'
                   (+ (* 2 p q) (*  q q))  ;compute q'
                   (/ count 2)))
        (else 
         (fib-iter (+ (* b q) 
                      (* a q) 
                      (* a p))
                   (+ (* b p) 
                      (* a q))
                   p
                   q
                   (- count 1)))))