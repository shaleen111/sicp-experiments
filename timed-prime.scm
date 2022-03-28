(define (smallest-divisor n)
    (define (find-divisor test)
        (cond ((> (square test) n) n)
              ((divides? test n) test)
              (else (find-divisor (+ test 1)))))
    (define (divides? test n)
        (= (remainder n test) 0))
    (find-divisor 2))

(define (prime? n)
    (= (smallest-divisor n) n))

(define (timed-prime-test n)
	(newline)
	(display n)
	(start-prime-test n (runtime)))

(define (start-prime-test n start-time)
	(if (prime? n)
			(report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
	(display " *** ")
	(display elapsed-time))

(define (search-for-primes start end)
	(define (search-iter counter)
		(cond ((even? counter) (search-iter (+ counter 1)))
              ((<= counter end) (timed-prime-test counter) (search-iter (+ counter 2)))))
    (search-iter start))


(search-for-primes 1000000000 1000000021)
(search-for-primes 10000000000 10000000061)
(search-for-primes 100000000000 100000000057)
(search-for-primes 1000000000000 1000000000063)
