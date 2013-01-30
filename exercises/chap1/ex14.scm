(define length<?
  (lambda (lista listb)
    (if (< (length lista) (length listb))
        '#t
        '#f)))

(define intercalate
  (lambda (a b op)
    (if (not (and (sorted? a op) (sorted? b op)))
        (error "Both lists must be sorted...")
        (cond ((null? a)
               b)
              ((null? b)
               a)
              ((op (car a) (car b))
               (cons (car a) (intercalate (cdr a) b op)))
              (else
               (cons (car b) (intercalate (cdr b) a op)))))))
