(define hexify
  (lambda (x)
    (cond ((< x 10) x)
          ((equal? x 10)
           'a)
          ((equal? x 11)
           'b)
          ((equal? x 12)
           'c)
          ((equal? x 13)
           'd)
          ((equal? x 14)
           'e)
          ((equal? x 15)
           'f)
          (else (error "Not in hex range")))))

(define decimal->hexadecimal
  (lambda (x)
    (if (not (list? x))
        (decimal->hexadecimal (cons x '()))
        (if (eq? (car x) 0)
            (cdr x)
            (decimal->hexadecimal (cons (quotient (car x) 16) (cons (hexify (modulo (car x) 16)) (cdr x))))))))

