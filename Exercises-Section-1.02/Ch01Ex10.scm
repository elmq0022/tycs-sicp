; Ackerman Function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


; what are the value of:
(A 1 10) ; 1024
(A 2 4) ; 65536
(A 3 3) ; 65536

; Define mathematical formulas for the below 
(define (f n) (A 0 n)) ; 2*n
(define (g n) (A 1 n)) ; 2^n
(define (h n) (A 2 n)) ; 0 for n=0; 2 for n=1;  2^(2(^2 ... (n times))) for n > 1
(define (k n) (* 5 n n)) ; 5n^2
