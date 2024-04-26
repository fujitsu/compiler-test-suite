type ty
 integer::arr(2)
 Real::rr(2)
 character::ch
end type
type(ty),parameter::obj(2) = [ty((/10,20/),[10.2,12.2],'q'),ty((/30,40/),[22.2,33.3],'a')]

Real,parameter::ar(*) = (obj(1)%rr)

if(size(obj) .EQ. size(ar))then
print*,'Pass'
else
print*,'Fail'
endif
end
