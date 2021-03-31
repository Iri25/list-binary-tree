; 2
; d) Sa se scrie o functie care transforma o lista liniara intr-o multime.
;
; Model matematic:
;
; isMember(e, l1, l2,..., ln) = { false, daca l este vida
;                                 true, daca e = l1 
;                                 isMember(e, l2, ..., ln), altfel
;                               }
;
; transformSet(l1, l2,..., ln) =  { (), daca l este vida
;                                   transformSet(l2,...,ln), daca l1 apartine (l2,..., ln)
;                                   l1 (+) transformSet(l2,...,ln), altfel 
;                                 }
;
; Implementare in lisp:
;
(defun isMember (e l)
    (cond
        ((null l) nil)
        ((eq e (car l)) t)
        (t (isMember e (cdr l)))
    )
)

(defun transformSet (l)
    (cond
        ((null l) nil)
        ((isMember (car l) (cdr l)) (transformSet (cdr l)))
        (t (cons(car l) (transformSet (cdr l))))
    )
)
    
; (transformSet '(1 2 4 5 5))
