integer,parameter::x(8) = [1,9,45,45,5,23,45,67]
type ty
logical*8::l(1)
end type
type(ty),parameter::obj = ty([.true.])
integer,parameter::k(1) = maxloc(x,back= obj%l(1))
integer::m(1) 
m = maxloc(x,back= obj%l(1))
if((k(1).eq.m(1)).and.k(1).eq.8)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
