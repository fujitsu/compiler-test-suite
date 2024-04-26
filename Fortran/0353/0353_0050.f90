program main
  real(kind=8) :: r1
  integer(kind=4) :: ii
  complex(kind=8) :: aa
  real(kind=8) :: r2
  integer(kind=4) :: jj
  real(kind=8) :: r3
  complex(kind=8) :: bb

  data bb       /(3.0,2.0)/
  data r1       /10.0/
  data aa%re    /1.0/
  data jj       /200/
  data r2       /20.0/
  data aa%im    /3.0/
  data r3       /30.0/
  data ii       /100/

  print *, ii
  print *, jj
  print *, r1
  print *, r2
  print *, r3
  print *, aa
  print *, bb

end
