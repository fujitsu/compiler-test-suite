program main
   complex(kind=16),dimension(5) :: bb,cc,dd
 complex(kind=16) :: aa

  data bb%re      /5*2.0/
  data aa%re      /1.0/
  data cc(1)%re   /3.0/
  data dd(1:5)%re /5*5.0/

  print *, aa
  print *, bb
  print *, cc
  print *, dd
end
