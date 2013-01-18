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


; Ex.6 - Write two procedures that convert temperatures, to and from, between Celsius and Farenheit
(define celsius->farenheit
  (lambda (t)
    (+ (* t (/ 9 5)) 32)))

(define farenheit->celsius
  (lambda (t)
    (* (- t 32) (/ 5 9))))


; Ex.7 - Calculate the distance between two points (represented as pairs) in a plane)
; >>> (distance '(1 . 2) '(2 . 3))
; >>> 1.4142135623731
(define distance
  (lambda (x y)
    (sqrt (+
           (expt
            (- (car y) (car x))
            2)
           (expt
            (- (cdr y) (cdr x))
            2)))))


; Ex.8 - Build a procedure that takes three points (pairs) A, B and C representing vertices of a triangle, a fourth point P (pair), and check if P is or is not within the triangle.
; >>> (within-triangle? '(0 . 0) '(0 . 3) '(3 . 0) '(1 . 1))
; >>> #t
; >>> (within-triangle? '(0 . 0) '(0 . 3) '(3 . 0) '(4 . 4))
; >>> #f
(define within-triangle?
  (lambda (A B C P)
    (let ((sign (lambda (p1 p2 p3)
                  (-
                   (*
                    (- (car p1) (car p3))
                    (- (cdr p2) (cdr p3)))
                   (*
                    (- (car p2) (car p3))
                    (- (cdr p1) (cdr p3)))))))
      (and (= (sign P A B) (sign P B C)) (= (sign P B C) (sign P C A))))))
