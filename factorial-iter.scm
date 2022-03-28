(define (fact n)
    (define (fact-iter product counter)
            (cond ((<= counter 0) product)
                  (else (fact-iter (* product counter) (- counter 1)))
 ))
    (fact-iter 1 n)
)

(fact 3)
