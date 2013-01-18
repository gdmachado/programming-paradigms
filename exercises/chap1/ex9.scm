; Ex.9 - Implement the standard Scheme procedure `member` which recieves an object, a list, and returns #f if the object is not contained within the list. If it is, returns the sublist starting with the object
; >>> (member 'x '(a b c))
; >>> #f
; >>> (member 'x '(a x c))
; >>> (x c)
(define member
  (lambda (object list)
    (if (null? list)
        '#f
        (if (eq? object (car list))
            list
            (member object (cdr list))))))
