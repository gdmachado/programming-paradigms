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
