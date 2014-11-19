(ns gdcr.test
  (:use clojure.test
        gdcr.core))

; (deftest clojure-language
;   )

(deftest game-of-life-test
  (is (= '() (a-world)))
  (is (= '([0 0]) (put-cell 0 0 (a-world))))
  (is (alive? 0 0 (put-cell 0 0 (a-world))))
  (is (not (alive? 1 1 (put-cell 0 0 (a-world)))))
  ; (is (= false (alive? 0 0
  ;                        (tick
  ;                        (put-cell 0 0
  ;                        (a-world))))))

  (is (= '([-1 -1] [-1 0] [-1 1]
           [ 0 -1]        [ 0 1]
           [ 1 -1] [ 1 0] [ 1 1]) cardinal-points))

  
  )
