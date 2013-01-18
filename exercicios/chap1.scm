(define pi 3.1415926536)

; Ex.3 - a) volume de uma esfera
(define volume-esfera
  (lambda (r)
    (* (/ 4 3) pi (expt r 3))))


; Ex.3 - b) área de uma circunferência
(define area-circ
  (lambda (r)
    (* pi (expt r 2))))


; Ex.3 - c) numero de itens diferentes de zero em uma lista
; >>> (conta-nao-zero '(1 2 3 0 4 0))
; >>> 4
(define conta-nao-zero
  (lambda (list)
    (if (null? list)
        0
        (+ (if (= (car list) 0) 0 1)
           (conta-nao-zero (cdr list))))))


; Ex.3 - d) recebe uma lista e retorna a metade par da lista
; OTIMIZAR - não é recursivo na cauda
(define list-even-half
  (lambda (list)
    (if (null? list)
        '()
        (if (= (modulo (car list) 2) 0)
            (cons (car list)
                  (list-even-half (cdr list)))
            (list-even-half (cdr list))))))


; Ex.3 - e) verifica se três números podem ser as medidas dos lados de um triângulo
(define triangle?
  (lambda (a b c)
    (and (> (+ a b) c)
         (> (+ a c) b)
         (> (+ b c) a))))


; Ex.6 - Escreva dois procedimentos que transformem medidas de temperatura entre Celsius e Farenheit
(define celsius->farenheit
  (lambda (t)
    (+ (* t (/ 9 5)) 32)))

(define farenheit->celsius
  (lambda (t)
    (* (- t 32) (/ 5 9))))


; Ex.7 - Calcular distancia entre dois pontos (pares) no plano
; Ponto: (x1 . x2)
; >>> (distancia '(1 . 2) '(2 . 3))
; >>> 1.4142135623731
(define distancia
  (lambda (x y)
    (sqrt (+
           (expt
            (- (car y) (car x))
            2)
           (expt
            (- (cdr y) (cdr x))
            2)))))


; Ex.8 - Construa um procedimento que receba três pontos (pares) A, B e C representando os vértices de um triângulo, um quarto ponto P (par), e verifique se P está ou não dentro do triângulo.
(define dentro-do-triangulo?
  (lambda (A B C P)
    
