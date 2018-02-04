# latex-notes-compilations
Master repository for Peeter's various latex notes compilations and/or books.

Most of the submodules found in this repository represent a single book or notes compilation, or the figures for that item.

Many of these were previously part of my (monolithic) physicsplay repository, but some of those ~/physicsplay/ dependencies
still exist.

Example of how to clone a subset of the repository:

    # install latex, make, perl, git and probably some other stuff.  then
    git clone git@github.com:peeterjoot/latex-notes-compilations.git writing
    cd writing
    ./bin/cloneGAe
    # add ~/writing/latex/bin to your $PATH
    cd GAelectrodynamics
    make mmacells.sty # make bug
    make

This should checkout the submodules associated with the GAelectrodynamics book project, which has a lot of good latex examples you can draw on for your own work.  
If you get as far as the make steps (which mean that you've installed all the prereqs like latex, git, make, ...) then the ctt script can be used to 
create standalone documents.

TODO:

- think that the .gitignore rules are busted after this move.

- potentially break up the mathematica repo into submodules (or at least put the METADATA into submodule?)

- Do I now have the .eps -> .pdf rules right?

- .gitignore rules missing Bibliography.bib and generated .pdf's (from eps)

- frequencydomain and curvilinear master .tex files get clobbered after initial clone (from classicthesis).  Rules for those aren't right in those makefiles.

- removed the dependency on commit_msg, but now the mkRevInfo runs unconditionally.

- write a master equation label renamer to normalize labels that have been cut and pasted.

- for completeness, prove the general divergence theorem (for all grades and volume types)?  Should at least state it.

- indexing missing.

- have old general TODO list still in physicsplay/notes/

