(defpackage :matching-brackets
  (:use :cl)
  (:export :pairedp))

(in-package :matching-brackets)

(defun bracket-pair (open-bracket close-bracket)
  (cond
    ((not open-bracket) nil)
    ((char= open-bracket #\[) (char= close-bracket #\]))
    ((char= open-bracket #\() (char= close-bracket #\)))
    ((char= open-bracket #\{) (char= close-bracket #\}))
  )
)

(defun pairedp (value)
  (let ((open-brackets (list)))
    (loop for c across value do
      (cond
        ((find c "([{") (push c open-brackets))
        ((find c ")]}")
          (when (not (bracket-pair (pop open-brackets) c)) (return-from pairedp nil))
        )
      )
    )
    (equal (list-length open-brackets) 0)
  )
)
