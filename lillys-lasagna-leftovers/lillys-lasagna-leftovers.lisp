(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
   :preparation-time
   :remaining-minutes-in-oven
   :split-leftovers))

(in-package :lillys-lasagna-leftovers)

(defun preparation-time (&rest rest)
  (* (length rest) 19)
)

(defun remaining-minutes-in-oven (
  &optional (modifier :normal)
)
  "Expected time in oven"
  (case modifier
    (:very-short 137)
    (:shorter 237)
    (:normal 337)
    (:longer 437)
    (:very-long 537)
    (otherwise 0)
  )
)

(defun split-leftovers (
  &key (weight nil provided-weight) (human 10) (alien 10)
)
  (when (not provided-weight) (return-from split-leftovers :just-split-it))

  (if (numberp weight)
    (- weight human alien)
    :looks-like-someone-was-hungry
  )
)
