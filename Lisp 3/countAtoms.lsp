; 15
; Sa se construiasca o functie care intoarce numarul atomilor dintr-o lista, de la orice nivel.
;
; Model matematic:
;
;                  
; countAtoms (l) = { 0, daca l este vida
;                    1, daca l este atom
;                    Σ (i = 1, n) countAtoms(li), unde l este lista, l = l1, ..., ln,  altfel
;                  }
; 
; Implementare in lisp:
;
(defun countAtoms (l)
    (cond
        ((null l) 0)
        ((atom l) 1)
        (t (apply '+ (mapcar #' countAtoms l)))
    )
)

; (countAtoms '(1(3 f(y 6))))
