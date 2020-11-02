(define (atom? x)
	(and (not (null? x))
		 (not (pair? x))))

(define (test x)
	(car x))

(define (length list)
	(cond (( null? list) 0 )
		(( atom? list) 1 )
		( else
		( + 1 ( length (cdr list))))))

(define (factorial n)
	(if (< n 2)
		1
		(* n (factorial (- n 1)))))

(define (insert-right-1st x y z)
	(if (EQ? y (car z))
		(cons x z)
		(cons (car z) (insert-right-1st x y (cdr z))))
)

(define (exp x y)
	(if (EQ? y 1)
		x
		(* x (exp x (- y 1))))
	)

(define square (lambda (x) (* x x)))

(define (sq)
	((lambda (x) (* x x)) 10)
	)

(define stack `(a b c))

(define (pop x)
	(car x)
	)

(define (push x y)
	(cons x y)
	)