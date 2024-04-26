program main
  complex(kind=4) :: aa
  complex(kind=4),dimension(5) :: bb,cc,dd

  data aa%im      /1.0/
  data bb%im      /5*2.0/
  data cc(3)%im   /3.0/
  data dd(2:4)%im /4.0,5.0,6.0/

  print *, aa
  print *, bb
  print *, cc
  print *, dd
end
