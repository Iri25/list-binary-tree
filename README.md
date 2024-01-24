The project contains several problems solved with the help of LISP.

The Lisp 1 folder contains 4 recursively solved problems:
- A function that selects the nth element of a list, or NIL, if it does not exist.
- A function that checks if an atom is a member of a not necessarily linear list.
- A function that builds the list of all sublists of a list. The sublist means either the list itself, or an element on any level, which is the list. Example: (1 2 (3 (4 5) (6 7)) 8 (9 10)) =>( (1 2 (3 (4 5) (6 7)) 8 (9 10)) (3 (4 5) (6 7)) (4 5) (6 7) (9 10) ).
- A function that transforms a linear list into a set.

The Lisp 2 folder contains 1 recursively solved binary tree problem:
- A binary tree is stored in the following two ways:
1. (node no-subtrees list-subtree-1 list-subtree-2 ...) 
2. (node (list-subtree-1) (list-subtree-2))
   
For example the tree below it can be represented in two ways:
1. (A 2 B 0 C 2 D 0 E 0) (1)
2. (A (B) (C (D) (E))) (2)

Tree
  A
 / \
B   C
   / \
  D   E
