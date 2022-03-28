(define (multiply a b)

    (define (double x) (+ x x))

    (define (halve x) (/ x 2))

    (define (multiply-iter c a b)
		(cond ((= b 0) c)
			  ((even? b) (multiply-iter c (double a) (/ b 2)))
			  (else (multiply-iter (+ c a) (double a) (/ (- b 1) 2)))))

    (multiply-iter 0 a b))

(multiply 5 3)
