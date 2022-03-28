(define (pascal-triangle row column)
(cond ((or (= column 1) (= row column)) 1)
            ((or (< column 1) (< row column)) 0)
            (else (+ (pascal-triangle (- row 1) (- column 1))
                             (pascal-triangle (- row 1) column)))))

(pascal-triangle 5 3)
