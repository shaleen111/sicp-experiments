(define (multiply a b)
	(define (double x) (+ x x))

    (define (halve x) (/ x 2))

    (cond ((= b 1) a)
		  ((even? b) (double (multiply a (halve b))))
		  (else (+ a (multiply a (- b 1))))))

(multiply 4 3)
