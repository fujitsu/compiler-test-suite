type ty2
  integer::x
  character,pointer::ptr2
  character,pointer::ptr4
end type

call s1()
contains
subroutine s1()

character,pointer::ptr
integer,pointer::ptr3
character,pointer::ptr6
character,pointer::ptr7
type(ty2)::obj2
character,target,save::t1="a"
integer,target,save ::t2=20
integer::k

data ptr, ptr3,  obj2%ptr2, ptr6,k, obj2%ptr4,obj2%x, ptr7 /NULL(),t2, t1, t1,4, t1,23,t1/

if(k.ne.4)print*,"101"
if(associated(ptr).neqv..false.)print*,"102"
if(associated(ptr3).neqv..true.)print*,"103"
if(associated(obj2%ptr2).neqv..true.)print*,"104"
if(associated(ptr6).neqv..true.)print*,"105"
if(associated(obj2%ptr4).neqv..true.)print*,"106"
if(associated(ptr7).neqv..true.)print*,"107"
if(ptr3.ne.20)print*,"108"
if(obj2%ptr2.ne."a")print*,"109"
if(obj2%ptr4.ne."a")print*,"110"
if(ptr6.ne."a")print*,"111"
if(ptr7.ne."a")print*,"112"
print*,"PASS"
end
end
