#!/usr/bin/env guile
!#

(let ((m 0)) (while (< m 1000)
  (set! m (+ m 1))

  (let ((n 0)) (while (<= n m)
    (set! n (+ n 1))

    (if (= 1 (gcd m n))
      (let ((k 0)) (while (< k 1000)

        (set! k (+ k 1))

        (let ((a (* k (- (expt m 2) (expt n 2))))
              (b (* k 2 m n))
              (c (* k (+ (expt m 2) (expt n 2)))))

          (if (and (> a 0) (> b 0) (> c 0) (= (+ a b c) 1000))
            ((display (* a b c))
             (display "\n")
             (exit)))
        )
      ))
    )
  ))
))
