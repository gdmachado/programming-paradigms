(define pi 3.1415926536)

; Ex.3 - a) volume of a sphere
(define sphere-volume
  (lambda (r)
    (* (/ 4 3) pi (expt r 3))))


; Ex.3 - b) area of a circle
(define circle-area
  (lambda (r)
    (* pi (expt r 2))))


; Ex.3 - c) counts the number of items different than zero in a list
; >>> (count-non-zero '(1 2 3 0 4 0))
; >>> 4
(define count-non-zero
  (lambda (list)
    (if (null? list)
        0
        (+ (if (= (car list) 0) 0 1)
           (count-non-zero (cdr list))))))


; Ex.3 - d) takes a list and returns the even-half sub-list (list containing all even numbers)
; OPTIMIZE - not tail-recursive
(define list-even-half
  (lambda (list)
    (if (null? list)
        '()
        (if (= (modulo (car list) 2) 0)
            (cons (car list)
                  (list-even-half (cdr list)))
            (list-even-half (cdr list))))))


; Ex.3 - e) checks if three numbers are valid sides of a triangle
(define triangle?
  (lambda (a b c)
    (and (> (+ a b) c)
         (> (+ a c) b)
         (> (+ b c) a))))
