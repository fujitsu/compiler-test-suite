program main
  complex(kind=8) :: aa
  complex(kind=8),dimension(5) :: bb,cc,dd

  data aa%im      /1.0/
  data bb%im      /5*2.0/
  data cc(5)%im   /3.0/
  data dd(4:5)%im /4.0,5.0/

  print *, aa
  print *, bb
  print *, cc
  print *, dd
end
