(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

(defun expected-time-in-oven ()
  "Expected time in oven"
  337
)

(defun remaining-minutes-in-oven (elapsed-minutes)
  "Remaining minutes in oven after elapsed"
  (- (expected-time-in-oven) elapsed-minutes)
)

(defun preparation-time-in-minutes (layers)
  "Preparation time for number of layers"
  (* layers 19)
)

(defun elapsed-time-in-minutes (layers elapsed-cooking-minutes)
  "Elapsed time for preparation of layers and elapsed cooking time"
  (+ (preparation-time-in-minutes layers) elapsed-cooking-minutes)
)
