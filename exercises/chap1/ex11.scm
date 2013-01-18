(define select-strings
  (lambda (list)
    (let ((result ""))
      (define select-rec
        (lambda (list result)
          (if (null? list)
              result
              (select-rec (cdr list)
                              (if (string? (car list))
                                  (if (equal? result "")
                                      (string-append result (car list))
                                      (string-append result " " (car list)))
                                  result)))))
      (select-rec list result))))
