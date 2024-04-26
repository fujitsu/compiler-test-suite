type ty
 Real::rr(2)
 character::ch
end type

type(ty),parameter::obj(2,2)= reshape([ty(10.1,'a'),ty(20.2,'b'),ty(12.3,'x'),ty(22.4,'v')],shape(obj))
Real,parameter::ar(*,*) = reshape([obj(1,1)%rr(1), obj(2,1)%rr(1),obj(1,2)%rr(1) ,obj(2,2)%rr(1)] , shape(obj))

if(size(obj) .EQ. size(ar))then
print*,'Pass'
else
print*,'Fail'
endif
end
