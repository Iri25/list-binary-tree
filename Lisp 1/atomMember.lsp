; 2
; b) Sa se construiasca o functie care verifica daca un atom e membru al unei liste.
;
; Model matematic:
;
; isMemberAtom(e, l1, l2, ..., ln) = { false, daca n = 0
;                                      true, daca e = l1 
;                                      isMemberAtom(e, l2, ..., ln), altfel
;                                    }
;
; checkAtom(a, l1, l2, ..., ln) = { false, daca n = 0
;                                   true, daca a este atom si a apartine (l1, ..., ln)
;                                   checkAtom(a, l2, ..., ln) altfel
;                                 }
; Implementare in lisp:
;
(defun isMemberAtom ( e l)
    (cond
        ((null l) nil)
        ((equal e (car l)) t)
        (t (isMemberAtom e (cdr l)))
    )
)

(defun checkAtom (a l)
    (cond
        ((null l) nil)
        ((and (atom a) (isMemberAtom a l)) t)
        (t (checkAtom a (cdr l)))
    )
)

; (load"C:\\Users\\HP\\Desktop\\Lisp1\\atomMember.lsp")
; (checkAtom '1 '(1 2 4 5))
; (checkAtom 'a '(1 a 4 5))