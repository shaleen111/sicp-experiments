(define (exp b n)

	(define (even? n)
		(= (remainder n 2) 0))

	(define (square x) (* x x))

	(define (exp-iter a b n)
		(cond ((= n 0) a)
					((even? n) (exp-iter a (square b) (/ n 2)))
					(else (exp-iter (* b a) (square b) (/ (- n 1) 2)))))

	(exp-iter 1 b n)
)

(exp 2 6)
