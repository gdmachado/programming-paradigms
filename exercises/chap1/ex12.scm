(require-extension list-of)

(define intercalate
  (lambda (a b)
    (if (not (and (sorted? a <) (sorted? b <)))
        (error "Both lists must be sorted...")
        (cond ((null? a)
               b)
              ((null? b)
               a)
              ((< (car a) (car b))
               (cons (car a) (intercalate (cdr a) b)))
              (else
               (cons (car b) (intercalate (cdr b) a)))))))

; simpler (although may take longer to run depending on the size of the lists)
; simply appends both lists and then sorts the resulting list using quicksort
; uses list comprehensions for a simpler quicksort definition
; requires chicken scheme extension 'list-of'
; TODO: define my own 'list-of' procedure
(define smart-intercalate
  (lambda (listA listB)
    (define quicksort
      (lambda (list)
        (if (null? list)
            list
            (let* ((pivot (car list))
                  (lesser (quicksort (list-of x (x in (cdr list)) (< x pivot))))
                  (greater (quicksort (list-of x (x in (cdr list)) (>= x pivot)))))
              (append lesser (cons pivot '()) greater)))))
    (quicksort (append listA listB))))
    
