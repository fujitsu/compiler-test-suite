type ty
integer::arr(4:3)
integer::arr2(2,2)
integer::k
integer,pointer::ptr
integer,pointer::ptr2(:)
character(len=3),pointer::ptr3
end type
type(ty)::obj
integer,target::t1=20
integer,target::t2(5)=20
character*3,target::ch = 'abc'
data obj%arr, obj%arr2 ,obj%k ,obj%ptr ,obj%ptr2,obj%ptr3 /0*1,3,4,5,6,30,t1,0*10,t2,ch/
if(any(obj%arr2.ne.reshape([3,4,5,6],[2,2])))print*,"101"
if(obj%k.ne.30)print*,"103"
if(associated(obj%ptr).neqv..true.)print*,"104"
if(associated(obj%ptr2).neqv..true.)print*,"105"
if(associated(obj%ptr3).neqv..true.)print*,"106"
print*,"PASS"
end
