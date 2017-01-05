repos="curvilinear GAelectrodynamics ece1229-antenna ece1229-antenna-figures figures figures.gabook frequencydomain gabookI gabookII gapauli latex stokesTheorem"
for i in $repos ; do (cd $i && git commit -a) ; done
for i in $repos ; do (cd $i && git pull) ; done
