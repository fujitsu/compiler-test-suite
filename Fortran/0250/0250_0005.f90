type ty
 integer::arr
 character::ch 
end type

type(ty),parameter::obj(*)= [ty(10,'a'),ty(20,'b')]
if(size(obj) .Eq. 2)then
print*,'Pass'
else
print*,'Fail'
endif
end
