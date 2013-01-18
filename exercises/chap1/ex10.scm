
CHICKEN
(c)2008-2012 The Chicken Team
(c)2000-2007 Felix L. Winkelmann
Version 4.8.0 (rev 0db1908)
linux-unix-gnu-x86-64 [ 64bit manyargs dload ptables ]
compiled 2012-09-24 on debian (Linux)

#;1> #;2> (make-set)

Error: call of non-procedure: ()

	Call history:

	<syntax>	  (make-set)
	<eval>	  (make-set)	<--
#;2> 
Error: call of non-procedure: ()

	Call history:

	<syntax>	  (define make-set ((quote ())))
	<syntax>	  (##core#set! make-set ((quote ())))
	<syntax>	  ((quote ()))
	<syntax>	  (quote ())
	<syntax>	  (##core#quote ())
	<eval>	  ((quote ()))	<--
#;2> #;3> (make-set)

Error: call of non-procedure: ()

	Call history:

	<syntax>	  (make-set)
	<eval>	  (make-set)
	<eval>	  [make-set] ((quote ()))	<--
#;3> '(make-set)
(make-set)
#;4> (list)
()
#;5> #;6> (make-set)

Error: call of non-procedure: ()

	Call history:

	<syntax>	  (make-set)
	<eval>	  (make-set)	<--
#;6> #;7> (make-set)

Error: call of non-procedure: ()

	Call history:

	<syntax>	  (make-set)
	<eval>	  (make-set)	<--
#;7> #;8> (make-set)
()
#;9> (eq? () list)

Error: illegal non-atomic object: ()
inside expression `(eq? ...)'

	Call history:

	<syntax>	  (eq? () list)	<--
#;9> (append 4 '())

Error: (append) bad argument type - not a proper list: 4

	Call history:

	<syntax>	  (append 4 (quote ()))
	<syntax>	  (quote ())
	<syntax>	  (##core#quote ())
	<eval>	  (append 4 (quote ()))	<--
#;9> (append '(4) '())
(4)
#;10> (cons 4 '())
(4)
#;11> 
Error: during expansion of (lambda ...) - in `lambda' - lambda-list expected: (lambda (element (unquote set)) (cons element set))

	Call history:

	<syntax>	  (define set-add (lambda (element (unquote set)) (cons element set)))
	<syntax>	  (##core#set! set-add (lambda (element (unquote set)) (cons element set)))
	<syntax>	  (lambda (element (unquote set)) (cons element set))	<--
#;11> #;12> (set-add "merda" (make-set))
("merda")
#;13> #;14> (contains 'x '(a b c))

Error: (=) bad argument type: x

	Call history:

	<syntax>	  (contains (quote x) (quote (a b c)))
	<syntax>	  (quote x)
	<syntax>	  (##core#quote x)
	<syntax>	  (quote (a b c))
	<syntax>	  (##core#quote (a b c))
	<eval>	  (contains (quote x) (quote (a b c)))
	<eval>	  [contains] (null? set)
	<eval>	  [contains] (= element (car set))
	<eval>	  [contains] (car set)	<--
#;14> #;15> (contains 'x '(a b c))

Error: bad argument count - received 1 but expected 2: #<procedure (contains element set)>

	Call history:

	<syntax>	  (contains (quote x) (quote (a b c)))
	<syntax>	  (quote x)
	<syntax>	  (##core#quote x)
	<syntax>	  (quote (a b c))
	<syntax>	  (##core#quote (a b c))
	<eval>	  (contains (quote x) (quote (a b c)))
	<eval>	  [contains] (null? set)
	<eval>	  [contains] (eq? element (car set))
	<eval>	  [contains] (car set)
	<eval>	  [contains] (contains (cdr set))
	<eval>	  [contains] (cdr set)	<--
#;15> #;16> (contains 'x '(a b c))
#f
#;17> (contains 'x '(a b x c))
#t
#;18> #;19> (set-add 'x '(a b c))
(x a b c)
#;20> (set-add 'x '(a b x c))
(a b x c)
#;21> (x)
#;22> (append '(x y z) '(a b c))
(x y z a b c)
#;23> (append '(x x x) '(x y y))
(x x x x y y)
#;24> (append 2 3)

Error: (append) bad argument type - not a proper list: 2

	Call history:

	<syntax>	  (append 2 3)
	<eval>	  (append 2 3)	<--
#;24> (error 'huela')

Error: huela

	Call history:

	<syntax>	  (error (quote huela))
	<syntax>	  (quote huela)
	<syntax>	  (##core#quote huela)
	<eval>	  (error (quote huela))	<--
#;24> (error "huela")

Error: huela

	Call history:

	<syntax>	  (error "huela")
	<eval>	  (error "huela")	<--
#;24> (if (= 1 1) (error "huela") 2)

Error: huela

	Call history:

	<syntax>	  (if (= 1 1) (error "huela") 2)
	<syntax>	  (##core#if (= 1 1) (error "huela") 2)
	<syntax>	  (= 1 1)
	<syntax>	  (error "huela")
	<eval>	  (= 1 1)
	<eval>	  (error "huela")	<--
#;24>
a

Error: unbound variable: a
#;24> (())]

Error: illegal non-atomic object: ()

	Call history:

	<syntax>	  (())	<--
#;24> 
Error: unexpected list terminator: #\]

	Call history:

	<syntax>	  (())	<--
#;24> #;25> 
Error: during expansion of (define ...) - in `define' - too many arguments: (define lixo (define bosta (2)) (bosta))

	Call history:

	<syntax>	  (define lixo (define bosta (2)) (bosta))	<--
#;25> #;26> lixo
#<procedure (lixo)>
#;27> (lixo)
1
#;28> bosta

Error: unbound variable: bosta
#;28> (bosta)

Error: unbound variable: bosta

	Call history:

	<syntax>	  (bosta)
	<eval>	  (bosta)	<--
#;28> (lixo)
1
#;29> (cdr '(1 2 3))
(2 3)
#;30> #;31> (union '(1 2 3) '(3 4 5))

Error: A and B must be lists!

	Call history:

	<syntax>	  (union (quote (1 2 3)) (quote (3 4 5)))
	<syntax>	  (quote (1 2 3))
	<syntax>	  (##core#quote (1 2 3))
	<syntax>	  (quote (3 4 5))
	<syntax>	  (##core#quote (3 4 5))
	<eval>	  (union (quote (1 2 3)) (quote (3 4 5)))
	<eval>	  [union] (list? A)
	<eval>	  [union] (error "A and B must be lists!")	<--
#;31> (list? '(1 2 3))
#t
#;32> (union (1 2 3) (3 4 5))

Error: call of non-procedure: 1

	Call history:

	<syntax>	  (union (1 2 3) (3 4 5))
	<syntax>	  (1 2 3)
	<syntax>	  (3 4 5)
	<eval>	  (union (1 2 3) (3 4 5))
	<eval>	  (1 2 3)	<--
#;32> #;33> (union '(1 2 3) '(3 4 5))
(5 4 3 2 1)
#;34> (append '(1 2 3) '(3 4 5))
(1 2 3 3 4 5)
#;35> reverse
#<procedure (reverse lst0397)>
#;36> (reverse '(1 2 3 4))
(4 3 2 1)
#;37> #;38> (union '(1 2 3) '(2 3 4 5))
(1 2 3 4 5)
#;39> (union '(1 2 2) '(2 2 3 1))
(1 2 3)
#;40> 
