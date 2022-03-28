(define (f n)
    (define (f-iter n1 n2 n3 counter)
        (cond ((< n 3) n)
              ((<= counter 0) n1)
              (else (f-iter (+ n1
                               (* 2 n2)
                               (* 3 n3))
                            n1 n2 (- counter 1)))))
    (f-iter 2 1 0 (- n 2))
)
(f 5)