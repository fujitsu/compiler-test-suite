program main
  type ty1
     real :: c1
     real :: c2
  end type ty1
  real,parameter :: c1 = 1.0
  complex,parameter :: c2 = (2.0,3.0)
  type(ty1),parameter :: ct = ty1(10.0,20.0)

  complex(kind=4) :: aa,bb,cc
  real(kind=4) :: ra,rb,rc

  data ra /c2/
  data rb /c2%re/
  data rc /c2%im/

  data aa%re /c1/
  data bb%re /c2%re/
  data cc%re /ct%c2/
  data cc%im /ct%c1/

  print *, ra
  print *, rb
  print *, rc

  print *, aa
  print *, bb
  print *, cc

end
