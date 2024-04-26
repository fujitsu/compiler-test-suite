integer,parameter::x(-3:2) = [1,9,45,45,5,23]
type ty
logical::l
end type
type(ty),parameter::obj = ty(.true.)
integer,parameter::k(1) = maxloc(x,dim =1,mask=.true.,kind=4,back= obj%l)
integer::m(1) 
m = maxloc(x,dim =1,mask=.true.,kind=4,back= obj%l)

if(k(1).eq.m(1).and.k(1).eq.4)then
 print*,"PASS"
else
 print*,"FAIL"
end if
end
