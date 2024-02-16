integer,parameter::x(12) = [1,9,45,45,5,21,212,2,2212,311,11,-122]
type ty
integer::l(1)= maxloc(x,back=.true.)
end type
type(ty)::obj

if(obj%l(1) .eq. 9)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end

