type ty
 integer::arr
end type

type(ty),parameter::obj1(2,2)= reshape([ty(10),ty(20),ty(12),ty(22)],(/2,2/))
type(ty),parameter::obj(*,1:*)= reshape([ty(10),ty(20),ty(12),ty(22)],shape(obj1))

if(size(obj) .eq. size(obj1)) then
print*,'Pass'
else
print*,'Fail'
endif
end
