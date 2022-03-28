(define (fib n)
	(fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
    (define (p-t-squared) (+ (* q q) (* p p)))
    (define (q-t-squared) (+ (* q q) (* 2 q p)))
	(cond ((= count 0) b)
            ((even? count)
            (fib-iter a
                      b
                      (p-t-squared)
                      (q-t-squared)
                      (/ count 2)))
          (else (fib-iter (+ (* q a) (* q b) (* p a))
                          (+ (* p b) (* q a))
                          (p-t-squared)
                          (q-t-squared)
                          (/ (- count 1) 2)))))

(fib 7)
