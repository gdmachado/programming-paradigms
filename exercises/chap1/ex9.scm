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
