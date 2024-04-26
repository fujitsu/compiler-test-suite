program main
  real(kind=8),dimension(2) :: rr
  complex(kind=8) :: aa,bb,cc
  equivalence(rr,aa)
  equivalence(bb,cc)

  data aa%re /1.0/
  data aa%im /2.0/

  data cc%im /3.0/


  print *, rr
  print *, aa
  print *, bb
  print *, cc

end
