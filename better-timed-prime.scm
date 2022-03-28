(define (smallest-divisor n)
    (define (next test)
        (if (= test 2)
            3
            (+ test 2)))
    (define (find-divisor test)
        (cond ((> (square test) n) n)
              ((divides? test n) test)
              (else (find-divisor (next test)))))
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

(timed-prime-test 1000000007)
(timed-prime-test 1000000009)
(timed-prime-test 1000000021)

(timed-prime-test 10000000019)
(timed-prime-test 10000000033)
(timed-prime-test 10000000061)

(timed-prime-test 100000000003)
(timed-prime-test 100000000019)
(timed-prime-test 100000000057)
