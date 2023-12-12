type ty
complex::tar
end type

complex,target,save::tar(3)
complex,target,save::tar2

type ty2
 type(ty)::obj
end type

type(ty2),target::obj2


real,pointer::ptr(:)=>tar(1:3:2)%re
real,pointer::ptr2=>obj2%obj%tar%re
real,pointer::ptr3=>tar(2)%re
real,pointer::ptr4=>tar2%im

if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(associated(ptr3).neqv..true.)print*,"103"
if(associated(ptr4).neqv..true.)print*,"104"
!ptr=>tar(1:3:2)%re
ptr =[10.0,20.0]
ptr2 =30.0
ptr4 = 45.0
ptr3 =34.0

if(ptr2.ne.30.0)print*,"105"
if(ptr4.ne.45.0)print*,"106"
if(ptr3.ne.34.0)print*,"107"

print*,"PASS"
end

