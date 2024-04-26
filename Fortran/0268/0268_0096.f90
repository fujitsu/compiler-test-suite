type ty
integer,pointer::ptr
integer::x
end type

type(ty)::obj
type(ty)::obj2(5)

integer,target::t1=20
data obj%ptr ,obj2(4)%ptr ,&
obj2(1)%ptr,&
obj2(2)%ptr,&
obj2(3)%ptr,&
obj%x,&
obj2(1)%x,&
obj2(2)%x,&
obj2(3)%x,&
obj2(4)%x,&
obj2(5)%x &
/5*t1,6*30/
if(associated(obj%ptr).neqv..true.)print*,"101"
if(associated(obj2(1)%ptr).neqv..true.)print*,"102"
if(associated(obj2(2)%ptr).neqv..true.)print*,"102"
if(associated(obj2(3)%ptr).neqv..true.)print*,"102"
if(associated(obj2(4)%ptr).neqv..true.)print*,"102"
if(obj2(1)%x.ne.30)print*,"104"
print*,"PASS"
end
