(defpackage :robot-name
  (:use :cl)
  (:export :build-robot :robot-name :reset-name))

(in-package :robot-name)

(defparameter robots (list))

(defun build-robot ()
  (push (format nil "RB~A~A~A" (random 9) (random 9) (random 9)) robots)
  (- (length robots) 1)
)

(defun robot-name (robot)
  (nth robot robots)
)

(defun reset-name (robot)
  (setf (nth robot robots) (build-robot))
)
