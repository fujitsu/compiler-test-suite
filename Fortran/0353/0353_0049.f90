program main
  complex(kind=8) :: aa
  integer(kind=4) :: ii, jj
  real(kind=8) :: r1,r2,r3
  complex(kind=8) :: bb
  integer(kind=4) :: kk,ll

  data ii       /100/
  data jj       /200/
  data kk       /300/
  data ll       /400/
  data r1       /10.0/
  data aa%re    /1.0/
  data r2       /20.0/
  data aa%im    /3.0/
  data r3       /30.0/
  data bb%im,bb%re    /4.0,2.0/

  print *, r1
  print *, ii
  print *, jj
  print *, kk
  print *, ll
  print *, r2
  print *, r3
  print *, aa
  print *, bb

end
