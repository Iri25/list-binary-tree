# list-binary-tree
The project contains several list and binary tree problems solved using LISP.

The [Lisp 1](https://github.com/Iri25/lfp-lisp-Iri25/tree/master/Lisp%201) folder contains 4 recursively solved problems:
- A function that selects the nth  element of a list, or NIL, if it does not exist.
- A function that checks if an atom is a member of a not necessarily linear list.
- A function that builds the list of all sublists of a list. The sublist means either the list itself, or an element on any level, which is the list. `Example: (1 2 (3 (4 5) (6 7)) 8 (9 10)) => ( (1 2 (3 (4 5) (6 7)) 8 (9 10)) (3 (4 5) (6 7)) (4 5) (6 7) (9 10) )`.
- A function that transforms a linear list into a set.

The [Lisp 2](https://github.com/Iri25/lfp-lisp-Iri25/tree/master/Lisp%202) folder contains 1 recursively solved binary tree problem:
- A function that specifies the level at which a node x appears in the tree for a tree of type 1. The root level is considered to be 0. A binary tree is stored in the following two ways: `(node no-subtrees list-subtree-1 list-subtree-2 ...)` or `(node (list-subtree-1) (list-subtree-2))`. For example the tree it can be represented in two ways: `(A 2 B 0 C 2 D 0 E 0)` or `(A (B) (C (D) (E)))`.

The [Lisp 3](https://github.com/Iri25/lfp-lisp-Iri25/tree/master/Lisp%203) folder contains 1 problem solved with MAP functions:
- A function that returns the number of atoms in a list, from any level.
