
implicit class(ty)(C), integer(d) 

type ty
logical::I
end type

type(ty), target :: ty1
pointer:: C
c=>ty1
d=1

c%I = .true.
if (c%I) then
  print *,"PASS"
else
  print *,d
  print *,"FAIL"
end if 
end
