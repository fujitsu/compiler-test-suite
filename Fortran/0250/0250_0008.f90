type ty
 integer::arr(2)
end type
type(ty),parameter::obj(*) = [ty((/10,20/)),ty((/30,40/))]
Integer,parameter::ar(*) = (obj(1)%arr)

if(size(obj) .EQ. size(ar))then
print*,'Pass'
else
print*,'Fail'
endif
end
