(define (sqrt x)
	(sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
	(if (good-enough? guess (improve guess x))
		(improve guess x)
		(sqrt-iter (improve guess x) x)
	)
)

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)(/ (+ x y) 2))

(define (good-enough? old-guess new-guess)
	(> 0.01 
		(/ (abs (- old-guess new-guess)) 
			old-guess)))

(define (square x)(* x x))

(define (abs x) (if (< x 0) (- x) x))