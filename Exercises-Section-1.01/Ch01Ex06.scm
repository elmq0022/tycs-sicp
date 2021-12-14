#lang sicp

; Alyssa P. Hacker doesn’t see why if needs to be
; provided as a special form. “Why can’t I just define
; it as an ordinary procedure in terms of cond?” she
; asks. Alyssa’s friend Eva Lu Ator claims this can
; indeed be done, and she defines a new version of if:

(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Delighted, Alyssa uses new-if to rewrite the
; square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; What happens when Alyssa attempts to use this to
; compute square roots? Explain.

; (if ⟨predicate⟩ ⟨consequent⟩ ⟨alternative⟩)

; From the text:
; To evaluate an *if expression*, the interpreter starts by
; evaluating the ⟨predicate⟩ part of the expression.
; If the ⟨predicate⟩ evaluates to a true value, the interpreter
; then evaluates the ⟨consequent⟩ and returns its value.
; Otherwise it evaluates the ⟨alternative⟩ and returns its value.
; I believe this is called a short circut

; Since the *new-if* is not a special form *sqrt-iter* and *improve*
; is evaluated indefinetly causing an infinite loop 