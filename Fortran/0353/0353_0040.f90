program main
   complex(kind=16),dimension(5) :: bb,cc,dd
 complex(kind=16) :: aa

  data bb%im      /5*2.0/
  data aa%im      /1.0/
  data cc(1)%im   /3.0/
  data dd(1:5)%im /5*5.0/

  print *, aa
  print *, bb
  print *, cc
  print *, dd
end
