; 2
; c) Sa se construiasca lista tuturor sublistelor unei liste. 
;    Prin sublista se intelege fie lista insasi, fie un element de pe orice nivel, care este lista. 
; Exemplu: (1 2 (3 (4 5) (6 7)) 8 (9 10)) 
; =>( (1 2 (3 (4 5) (6 7)) 8 (9 10)) (3 (4 5) (6 7)) (4 5) (6 7) (9 10) ).
;
; Model matematic:
;
; sublist(l1, ..., ln) = { (), daca l este vida
;                          l1 (+) sublist(l1) + sublist(l2, ..., ln), daca l1 este o lista
;                          sublist(l2, ..., ln), altfel
;                        }
;
; listMain(l1, ..., ln) = [sublist(l1, ..., ln)]

; Implementare in lisp:
;
(defun sublist (l)
    (cond
        ((null l) nil)
        ((listp (car l)) (cons (car l)(sublist (cdr l))))
        (t(sublist (cdr l)))
    )
)

(defun listMain (l)
    (list (sublist (cdr l)))
)

; (listMain '(1 2 (3 (4 5) (6 7)) 8 (9 10)))
