
implicit class(ty)(d)
type ty
integer::I
end type

type(ty), target :: ty1
pointer:: ddd
ddd=>ty1

ddd%I = 1
if (ddd%I .EQ. 1) then
  print *,"PASS"
else
  print *,"FAIL"
end if 
end
