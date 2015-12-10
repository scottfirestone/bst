Overview

A binary tree is built from nodes. Each node has:

A) An element of data
B) A link to the left. All nodes to the left have data elements less/lower than this node's data element.
C) A link to the right. All nodes to the right have data elements more/greater than this node's data element.

Build a binary search tree with:
<!-- -start with "tree = BinarySearchTree.new" -no arguments -->
-insert method adds node(value), *returns depth of new node*(0 if 1 lvl deep, 1 if 2 lvls, etc)
-include?(value) returns true or false if exists
-depth_of(value) returns tree depth for item
-max returns largest value (bottom right leaf)
-min represents smallest value (left-most leaf)
-sort returns array of node elements in ascending order
-load('document name'), document one value per line, return value=# of unique values inserted into tree (ignores duplicates)

Extensions
-leaves method returns # of leaves on tree (not include root)
-height returns maximum depth of tree
-delete removes specified piece of data from tree

------------------------------------------------------------
