program main
  character(kind=1,len=10),parameter :: cstr = "xxxx_abcd_"
  real(kind=8) :: ra,rb,rc,rd,re
  complex(kind=8) :: aa,bb,cc,dd,ee

  data ra    /-100/
  data rb    /+100/
  data rc    /-1.0/
  data rd    /+3.0/
  data re    /cstr(6:9)/

  data aa%re /-100/
  data bb%im /+100/
  data cc%re /-1.0/
  data dd%im /+3.0/
  data ee%re /cstr(6:9)/

  print *, ra
  print *, rb
  print *, rc
  print *, rd
  print *, re

  print *, aa
  print *, bb
  print *, cc
  print *, dd
  print *, ee

end
