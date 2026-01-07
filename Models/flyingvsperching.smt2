; ==================================================
; Neural Network Verification (Flying vs Perching)
; SMT-LIB v2 format
; ==================================================

(set-logic QF_LRA)

; ---------- INPUT FEATURES ----------
(declare-fun x1 () Real) ; feature 1 (e.g., WindSpeed)
(declare-fun x2 () Real) ; feature 2 (e.g., WT_Distance)

; ---------- HIDDEN LAYER 1 (2 neurons example) ----------
(declare-fun h1_1 () Real)
(declare-fun h1_2 () Real)

; weights from input -> hidden1
(define-fun w11 () Real  0.42)
(define-fun w12 () Real -0.18)
(define-fun w21 () Real  0.33)
(define-fun w22 () Real  0.71)

; biases
(define-fun b1_1 () Real 0.12)
(define-fun b1_2 () Real -0.09)

; ReLU activation
(assert (= h1_1 (ite (>= (+ (* w11 x1) (* w21 x2) b1_1) 0)
                     (+ (* w11 x1) (* w21 x2) b1_1)
                     0)))

(assert (= h1_2 (ite (>= (+ (* w12 x1) (* w22 x2) b1_2) 0)
                     (+ (* w12 x1) (* w22 x2) b1_2)
                     0)))

; ---------- OUTPUT LAYER ----------
(declare-fun out () Real)

; output weights
(define-fun wo1 () Real  1.15)
(define-fun wo2 () Real -0.77)
(define-fun bo  () Real -0.30)

(assert (= out (+ (* wo1 h1_1) (* wo2 h1_2) bo)))

; ---------- CLASSIFICATION RULE ----------
; Flying if output >= 0
(declare-fun Flying () Bool)
(assert (= Flying (>= out 0)))

; ---------- QUERY ----------
; Example: is there an input where Flying is true?
(check-sat)
(get-model)
