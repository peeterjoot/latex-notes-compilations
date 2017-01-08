# latex-notes-compilations
Master repository for Peeter's various latex notes compilations and/or books.

Most of the submodules found in this repository represent a single book or notes compilation, or the figures for that item.

Many of these were previously part of the (monolithic) physicsplay repository, but some of those ~/physicsplay/ dependencies
still exist.



TODO:

- think that the .gitignore rules are busted after this move.

- physicsplay repo references in:

      ece1228-electromagnetic-theory/GNUmakefile
      ece1236-microwaves/GNUmakefile
      ece1254-multiphysics/GNUmakefile
      gabookI/GNUmakefile
      phy1520-quantum/GNUmakefile

   and in the METADATA rules.

- Do I now have the .eps -> .pdf rules right?

- .gitignore rules missing Bibliography.bib and generated .pdf's (from eps)

- frequencydomain and curvilinear master .tex files get clobbered after initial clone (from classicthesis).  Rules for those aren't right in those makefiles.

- removed the dependency on commit_msg, but now the mkRevInfo runs unconditionally.

- write a master equation label renamer to normalize labels that have been cut and pasted.

- for completeness, prove the general divergence theorem (for all grades and volume types)?  Should at least state it.

- indexing missing.
