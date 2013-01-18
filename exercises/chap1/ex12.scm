(require-extension list-of)

; more complex - reads each element of both lists, comparing two by two and appending smaller onto the result list
(define intercalate
  (lambda (listA listB)
    (if (not (and (sorted? listA <) (sorted? listB <)))
        (error "Both lists must be sorted...")
        (let ((result (list)))
          (define intercalate-rec
            (lambda (listA listB result)
              (if (and (null? listA) (null? listB))
                  (reverse result)
                  (if (or (null? listA) (null? listB))
                      (append (reverse result)
                              (if (null? listA)
                                  listB
                                  listA))
                      (if (<= (car listA) (car listB))
                          (intercalate-rec (cdr listA) listB (cons (car listA) result))
                          (intercalate-rec listA (cdr listB) (cons (car listB) result)))))))
          (intercalate-rec listA listB result)))))

; much simpler (although may take longer to run depending on the size of the lists)
; simply appends both lists and then sorts the resulting list using quicksort
; uses list comprehensions for a simpler quicksort definition
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
    
