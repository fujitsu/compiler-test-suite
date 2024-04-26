program main
  complex(kind=4) :: aa
  complex(kind=8),dimension(5) :: bb,cc,dd

  data aa%im      /1.0/
  data bb%im      /5*2.0/
  data cc(5)%im   /3.0/
  data dd(4:5)%im /4.0,5.0/

  data bb%re      /5*12.0/
  data dd(2:5)%re /14.0,15.0,16.0,17.0/
  data cc(1)%re   /13.0/
  data cc(5)%re   /23.0/
  data aa%re      /11.0/

  print *, aa
  print *, bb
  print *, cc
  print *, dd
end
