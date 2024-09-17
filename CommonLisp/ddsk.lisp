(defpackage :ddsk
  (:use :cl))
(in-package :ddsk)

(setf *random-state* (make-random-state t))
(defparameter *chunks* '("ドド" "スコ"))
(defparameter *start-state* :s0)
(defparameter *accepting-state* :s12)
(defparameter *state-diagram*
  '(:s0 (:s1 :s0)
    :s1 (:s0 :s2)
    :s2 (:s0 :s3)
    :s3 (:s0 :s4)
    :s4 (:s5 :s0)
    :s5 (:s0 :s6)
    :s6 (:s0 :s7)
    :s7 (:s0 :s8)
    :s8 (:s9 :s0)
    :s9 (:s0 :s10)
    :s10 (:s0 :s11)
    :s11 (:s0 :s12)
    :s12 (:s12 :s12)))

(defun transition (state input)
  (nth input (getf *state-diagram* state)))

(defun is-accepted-p (state)
  (eq state *accepting-state*))

(defun input-randomly ()
  (random 2 *random-state*))

(defun say-chunk (input)
  (format t (nth input *chunks*)))

(defun inject-love ()
  (format t "ラブ注入♡~%"))

(defun ddsk (state)
  (let* ((input (input-randomly))
         (next-state (transition state input)))
    (say-chunk input)
    (if (is-accepted-p next-state)
        (inject-love)
        (ddsk next-state))))

(ddsk *start-state*)
