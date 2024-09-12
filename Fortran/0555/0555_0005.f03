
implicit class(ty)(C-E), class(typ)(I)
implicit type(ty) (F-H)

type ty
logical::I
end type
type typ
logical::J
end type

type(ty), target :: ty1
pointer:: C,D,E
c=>ty1
d=>ty1
e=>ty1

c%I = .true.
if (d%I) then
  print *,"PASS"
else
  print *,"FAIL"
end if 
end
