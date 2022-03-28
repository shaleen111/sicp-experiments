(define (fibo n)
    (define (fibo-iter last second-last counter)
        (if (<= counter 0)
            last
            (fibo-iter (+ last second-last) last (- counter 1)))
    )
    (fibo-iter 1 0 (- n 1))
)

(fibo 8)
