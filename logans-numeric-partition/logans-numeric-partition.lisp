(defpackage :logans-numeric-partition
  (:use :cl)
  (:export :categorize-number :partition-numbers))

(in-package :logans-numeric-partition)

(defun categorize-number (category new)
  (cond
    ((evenp new)
      ; Even - Make new cons of odds as they were and evens with new added to front
      (cons (car category) (cons new (cdr category)))
    )
    ((oddp new)
      ; Odd - Do the opposite
      (cons (cons new (car category)) (cdr category))
    )
  )
)

(defun partition-numbers (numbers)
  ; Start with a cons of two empty lists and reduce numbers by adding each element to one
  ; of the lists
  (reduce #'categorize-number numbers :initial-value '(() . ()))
)
