(define (f n)
(define (f-iter n1 n2 n3 counter)
    (cond ((< n 3) n)
          ((> counter n) n1)
          (else (f-iter (+ n1
                           (* 2 n2)
                           (* 3 n3))
                        n1 n2 (+ counter 1))))
)
(f-iter 2 1 0 3)
)

(f 3)
