(define make-set list)

(define contains
  (lambda (element set)
    (if (eq? element '())
        '#t
        (if (null? set)
            '#f
            (if (eq? element (car set))
                '#t
                (contains element (cdr set)))))))

(define set-add
  (lambda (element set)
    (if (equal? element '())
        set
        (if (contains element set)
            set
            (cons element set)))))

(define union
  (lambda (A B)
    (if (not (and (list? A) (list? B)))
        (error "Both arguments must be lists!")        
        (let ((C (append A B)))
          (define union-rec
            (lambda (X Y)
              (if (null? X)
                  (reverse Y)
                  (union-rec (cdr X) (set-add (car X) Y)))))
          (union-rec C (make-set))))))

(define subtraction
  (lambda (A B) ; A - B
    (if (not (and (list? A) (list? B)))
        (error "Both arguments must be lists!")
        (if (null? B)
            A
            (let ((C (make-set)))
              (define subtraction-rec
                (lambda (X Y Z)
                  (if (null? X)
                      (reverse Z)
                      (subtraction-rec (cdr X)
                                       Y
                                       (if (not (contains (car X) Y))
                                           (set-add (car X) Z)
                                           Z)))))
              (subtraction-rec A B C))))))

; not requested - intersection
(define intersection
  (lambda (A B) ; A ∩ B
    (if (not (and (list? A) (list? B)))
        (error "Both arguments must be lists!")
        (if (null? B)
            A
            (let ((C (make-set)))
              (define intersection-rec
                (lambda (X Y Z)
                  (if (null? X)
                      (reverse Z)
                      (intersection-rec (cdr X)
                                       Y
                                       (if (contains (car X) Y)
                                           (set-add (car X) Z)
                                           Z)))))
              (intersection-rec A B C))))))
