type ty
complex::tar
end type

complex,target,save::tar(3)
complex,target,save::tar2

type(ty),target,save::obj

real,pointer::ptr(:)=>tar(1:3:2)%re
real,pointer::ptr2=>obj%tar%re
real,pointer::ptr3=>tar(1)%re
real,pointer::ptr4=>tar2%im

if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(associated(ptr3).neqv..true.)print*,"103"
if(associated(ptr4).neqv..true.)print*,"104"
ptr2=10.0
ptr3=12.0
ptr4=13.0
if(ptr4.ne.13.0)print*,"105",tar2%im
if(ptr3.ne.12.0)print*,"106"
if(ptr2.ne.10.0)print*,"107"
print*,"PASS"
end
