# latex-notes-compilations
Master repository for Peeter's various latex notes compilations and/or books:

https://www.amazon.com/dp/1798504219 Relativistic Electrodynamics: Notes and problems from 2011 PHY450H1S
https://www.amazon.com/dp/B088NXZBG5 QUANTUM MECHANICS II: Notes and problems from UofT PHY456H1F 2012
https://www.amazon.com/dp/1092133593 Advanced Classical Optics: Notes and problems from UofT PHY485H1F 2012
https://www.amazon.com/dp/1799119963 Condensed Matter Physics: Notes and problems from UofT PHY487H1F 2013
https://www.amazon.com/dp/1798195194 Basic Statistical Mechanics: Notes and problems from 2013 UofT PHY452H1S
https://www.amazon.com/dp/109738487X Continuum Mechanics: Notes and problems from UofT PHY454H1S 2012
https://www.amazon.com/dp/B088NXZBG5 Graduate Quantum Mechanics: Notes and problems from 2015 UofT PHY1520H
https://www.amazon.com/dp/1795771011 Quantum Field Theory I: Notes and problems from UofT PHY2403 2018

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

If you get as far as the make steps (which mean that you've installed all the prereqs like latex, git, make, ...) then the ctt script can be used to create standalone documents.

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

## To use booktemplate

try this to start with:

   git clone git@github.com:peeterjoot/latex-notes-compilations.git peeterjoot
   cd peeterjoot/
   export PATH=$PATH:`pwd`/latex/bin
   for i in latex booktemplate ; do git submodule update --init $i ; (cd $i && git checkout master) ; done
   cd booktemplate/
   make

Notes:
* You will need a Unix command line.  MacOS with homebrew is one option, as is any flavor of Linux, or a Windows WSL-2 Linux installation.
* You can change that peeterjoot clone path to something else if you want, but I'll refer to it as peeterjoot/ below.
* The clone and submodule update commands above, assume that you have a github userid and have created your own ssh key pair.
* You'll want to add the `pwd`/latex/bin path above to your PATH (.bash_profile, .profile, ...)
* I've assumed you are using a ksh/bash compatible shell.  If you aren't then you probably know how to modify this appropriately.

I'd suggest that you make your own git repo for that (and one for figures), but you can seed that with the "booktemplate" above once you've cloned it.

If you want to see how this works for one of my other notes compilation, or my book, run something like:

   for i in figures/GAelectrodynamics figures/gabook mathematica GAelectrodynamics gapauli latex frequencydomain; do git submodule update --init $i ; (cd $i && git checkout master) ; done

from the peeterjoot/ directory, or if you want to grab all, run:

   ./bin/cloneem

(also from the peeterjoot/ directory)

Another option, that may be preferable, if you don't want all the crap that I've accumulated over the years, is to start with the classicthesis template directly.  I took a copy of that years ago and hacked it considerably, so if you start with that, you can use a recent version (I haven't taken the time to update my notes to a recent version of classicthesis, as it has changed a lot.)
