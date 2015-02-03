(ns core)

(def cardinal-points
  (remove #{[0 0]} (for [a [-1 0 1], b [-1 0 1]] [a b])))

(defn tick [world] world)

(defn alive? [x y world]
      (.contains world [x y]))

(defn put-cell [x y world]
      (list [x y]))

(defn a-world []
      '())
