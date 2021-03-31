; 7. 
; Se da un arbore de tipul (1);
; Sa se precizeze nivelul pe care apare un nod x in arbore. 
; Nivelul radacii se considera a fi 0. 
;
; nod nr-subarbori lista-subarbore-1 lista-subarbore-2 ...) (1)
; De exemplu arborele
;  A
; / \
; B C
;  / \
;  D E
;(A 2 B 0 C 2 D 0 E 0) (1)
;
; Model matematic:
; 
; isNod (l1, ....ln, e) = { false, l este vida
;                           true, daca e = l1
;                           isNod(l3, ..., ln, e), altfel
;                         }
;
;
; crossLeftSubtree (p1, ..., pn, nr_v, nr_m) = { (), daca p este vida
;                                                (), daca nr_v = 1 + nr_m
;                                                p1 (+) p2 (+) crossLeftSubtree(p3, ..., pn, nr_v + 1, nr_m + p2), altfel
;                                              }
;
;
; leftSubtree (p1, ..., pn) = crossLeftSubtree(p3, ...,pn, 0, 0)
; 
;
; crossRightSubtree (q1, ..., qn, nr2_v, nr2_m) = { (), daca q este vida
;                                                   q, daca nr2_v = 1 + nr2_m
;                                                   crossRightSubtree(q3, ..., qn, nr2_v + 1, nr2_m + q2), altfel
;                                                 }
;
;
; rightSubtree (q1, ..., qn) = crossRightSubtree(q3, ...,qn, 0, 0)
;
;
; treeLevel(l1, ..., ln, e) = { -1, daca l este vida 
;                               0, daca e = l1 
;                               1 + treeLevel(leftSubtree(l1, ..., ln), e) , daca isNod(leftSubtree(l1, ..., ln), e)
;                               1 + treeLevel(rightSubtree(l1, ..., ln), e), altfel
;                             }
;
;
; main (l1, ..., ln, e) = { -1, daca isNod(l1, ..., ln, e) este false
;                           treeLevel(l1, ..., ln, e), altfel
;                         }
;
; Implementare in lisp:
;     
(defun isNod (l e)
    (cond 
        ((null l) nil)
        ((eq (car l) e) t)
        (t(isNod (cddr l) e ))
    )
)
;
(defun crossLeftSubtree(p nr_vs nr_ms)
 (cond
 ((null p) nil)
 ((= nr_vs (+ 1 nr_ms)) nil)
 (t (cons (car p) (cons (cadr p) (crossLeftSubtree (cddr p) (+ 1 nr_vs) (+ (cadr p) nr_ms)))))
 )
)
;
(defun leftSubtree(p)
    (crossLeftSubtree (cddr p) 0 0)
)
;
(defun crossRightSubtree(q nr2_vd nr2_md)
 (cond
 ((null q) nil)
 ((= nr2_vd (+ 1 nr2_md)) q)
 (t (crossRightSubtree (cddr q) (+ 1 nr2_vd) (+ (cadr q) nr2_md)))
 )
)
;
(defun rightSubtree(q)
    (crossRightSubtree (cddr q) 0 0)
)
;
(defun treeLevel (l e)
    (cond
        ((null l) nil)
        ((eq (car l) e) 0)
        ((isNod(leftSubtree l) e ) (+ 1 (treeLevel (leftSubtree l) e)))
        (t (+ 1 (treeLevel (rightSubtree l) e)))
    )
)
;
(defun main (l e)
    (cond
        ((not (isNod l e)) -1)
        (t(treeLevel l e))
    )
)

; (main '(A 2 B 0 C 2 D 0 E 0) 'A)
; (main '(A 2 B 0 C 2 D 0 E 0) 'B)
; (main '(A 2 B 0 C 2 D 0 E 0) 'C)
; (main '(A 2 B 0 C 2 D 0 E 0) 'D)
; (main '(A 2 B 0 C 2 D 0 E 0) 'E)
; (main '(A 2 B 0 C 2 D 0 E 0) 'X) 
; (main '(A 2 B 2 D 0 E 1 H 0 C 2 F 1 I 0 G 0) 'A)
; (main '(A 2 B 2 D 0 E 1 H 0 C 2 F 1 I 0 G 0) 'E)
; (main '(A 2 B 2 D 0 E 1 H 0 C 2 F 1 I 0 G 0) 'Y)

