(define (atom? x)
	(and (not (null? x))
		 (not (pair? x))))

;Taken from lecture notes
(define (length list)
	(cond (( null? list) 0 )
		(( atom? list) 1 )
		( else
		( + 1 ( length (cdr list))))))

(define (sort list)
	(if (EQ? (length list) 1)
		list
		(cons (car (sort_inner list)) (sort (cdr (sort_inner list))))
	)
)

(define (sort_inner list)
	(reverse (opposite (reverse 
		(if (EQ? (length list) 2)
			(if (< (car list) (cadr list))
				list
				(cons (cadr list) (cons (car list) `() ))
			)
			(if (< (car list) (cadr list))
				(cons (car list) (sort_inner (cdr list)))
				(cons (cadr list) (sort_inner (cons (car list) (cddr list))))
			)
		))
	))
)

(define (opposite list2)
	(if (EQ? (length list2) 2)
			(if (> (car list2) (cadr list2))
				list2
				(cons (cadr list2) (cons (car list2) `() ))
			)
			(if (> (car list2) (cadr list2))
				(cons (car list2) (opposite (cdr list2)))
				(cons (cadr list2) (opposite (cons (car list2) (cddr list2))))
			)
	)
)