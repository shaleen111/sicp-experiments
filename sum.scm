(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-cubes a b)
    (sum cube a inc b))

(define (sum-pi a b)
    (define (pi-next n) (+ n 4))
    (define (pi-term x) (/ 1.0 (* x (+ x 2))))
    (sum pi-term a pi-next b))

(define (integrate f a b dx)
    (define (next-term x) (+ x dx))
    (* dx (sum f (+ a (/ dx 2)) next-term b)))
(integrate cube 0 1.0 0.01)

(define (simpsons-rule f a b n)
    (define h (/ (- b a) n))
    (define (y n)
        (f (+ a (* n h))))
    (define (inc-by-2h x) (+ x h h))
    (define (alternate-sum x)
        (sum f x inc-by-2h b))
    (* (/ h 3)
        (+ a
           b
           (* 2 (alternate-sum a))
           (* 4 (alternate-sum (+ a h))))))
(simpsons-rule cube 0 1.0 1000)

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))
(sum-iter cube 1 inc 10)

; (define (prod term a next b)
;     (if (> a b)
;         1
;         (* (term a)
;            (prod term (next a) next b))))

(define (prod term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* (term a)
                              result))))
    (iter a 1.0))

(define (factorial n)
    (define (identity x) x)
    (define (inc x) (+ x 1))
    (prod identity 1 inc n))

(define (pi-prod n)
    (define (inc x) (+ x 1))
    (define (square x) (* x x))
    (define (term x) (/ (* (* 2 x)
                           (* 2 (+ x 1)))
                        (square (+ (* 2 x) 1))))

       (prod term 1.0 inc n))

(* 4 (pi-prod 100))
