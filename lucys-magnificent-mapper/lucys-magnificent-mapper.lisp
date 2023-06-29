(defpackage :lucys-magnificent-mapper
  (:use :cl)
  (:export :make-magnificent-maybe :only-the-best))

(in-package :lucys-magnificent-mapper)

(defun make-magnificent-maybe (function input)
  (mapcar function input)
)

(defun only-the-best (function input)
  (remove 1 (remove-if function input))
)
