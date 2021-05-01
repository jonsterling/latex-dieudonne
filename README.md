# dieudonne

A LaTeX package to reproduce (an enhanced version of) the numbered paragraph
style from classic French mathematics, famous from EGA.

Numbered nodes are supported at any level (below chapters, sections,
subsections, etc.); naively this could introduce problems:

1. If a node below a section does not increment the subsection count, we would
   have two different objects with the same number.


2. If a node below a section does increment the subsection count, the table of
   contents would appear skip a section.


We resolve this problem by using an interpunct instead of a dot to indicate
digits that are "node-level"; then, there can be a node (1·1) and a section
(1.1), whose first node is (1.1·1), etc. The specific symbol used and the
formatting of node-level digits is customizable.

It is recommended that theorem/lemma environments be declared to use the `node`
counter. Equations under a node will have their numbers as suffixes of the node
index, as in classic French books.


## Demo file

The demo (`main.tex`) requires the font garamondx to be installed; you can get
it [here](https://www.tug.org/fonts/getnonfreefonts/).
