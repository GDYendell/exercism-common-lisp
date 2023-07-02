(defpackage :leap
  (:use :cl)
  (:export :leap-year-p))
(in-package :leap)

(defun factor-p (num div)
  (zerop (mod num div))
)

(defun leap-year-p (year)
  (cond
    ((not (factor-p year 4)) nil)
    ((and (factor-p year 100) (not (factor-p year 400))) nil)
    (t t)
  )
)
