; Ex.6 - Write two procedures that convert temperatures, to and from, between Celsius and Farenheit
(define celsius->farenheit
  (lambda (t)
    (+ (* t (/ 9 5)) 32)))

(define farenheit->celsius
  (lambda (t)
    (* (- t 32) (/ 5 9))))
