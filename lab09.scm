
;; Scheme ;;

; Q3
(define (over-or-under x y)
  (cond ((> x y) 1) ((< x y) -1) (else 0))
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0

; Q4
(define (filter-lst f lst)
(if (null? lst)
    lst
    (if (f (car lst))
        (cons (car lst) (filter f (cdr lst)))
        (filter f (cdr lst))))
)

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)

; Q5
(define (make-adder num)
  (define (adder n) (+ num n))
  adder
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13
