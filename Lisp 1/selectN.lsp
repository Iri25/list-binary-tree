; 2
; a) Definiti o functie care selecteaza al n-lea element al unei liste, sau NIL, daca nu exista.
;
; Model matematic:
;
; selectN(l1, ..., ln, k) = { none, daca l este vida
;			                  l1, daca k = 1 si l nu este vida
;			                  selectN(l2, ..., ln, k-1), altfel 
;                           }
;
; Implementare in lisp:
;
(defun selectN(l k)
	(cond
		((null l) nil)
		((= k 1) (car l))
		(t (selectN (cdr l) (- k 1)))
	)
)

; (load"C:\\Users\\HP\\Desktop\\Lisp1\\selectN.lsp")
; (selectN '(1 3 7 9) '3)
