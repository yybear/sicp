(define (cube x) 
	(cube-iter 1.0 x))

(define (cube-iter guess x)
	(if(good-enough? guess (improve guess x))
		(improve guess x)
		(cube-iter (improve guess x) x)
		))

(define (good-enough? old-guess new-guess)
	(> 0.001 
		(/ (abs (- old-guess new-guess)) 
			old-guess)))

(define (improve guess x) 
	(/ (+ (* guess 2) (/ x (* guess guess))) 
		3))

(define (abs x) (if (< x 0) (- x) x))