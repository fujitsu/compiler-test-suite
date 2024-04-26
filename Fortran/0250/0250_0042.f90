type ty
Integer::ii
end type

type(ty),dimension(*,*)::obj(2,2) ,obj1(2:*,-1:*) 

parameter(obj = ty(1), obj1 = reshape([ty(1),ty(3),ty(4),ty(5)]&
,shape(obj)))

if(size(obj) .eq. 4 .and. size(obj1) .eq. 4)then
print*,'Pass'
else
print*,'Fail'
endif
end

