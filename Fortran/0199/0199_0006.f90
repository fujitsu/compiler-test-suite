type ty
 integer::arr(5)
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
integer::arr9(5)

data arr9  /1,2,3,4,5/
data obj%ptr  /t2(1)/
data obj%arr  /5*1/
data obj%ptr2  /t2/
data obj%arr2  /3,4,5,6/
data obj%ptr3  /ch/
data obj%k  /30/

if(any(arr9.ne.[1,2,3,4,5]))print*,"101"
if(any(obj%arr.ne.[1,1,1,1,1]))print*,"102",obj%arr
if(any(obj%arr2.ne.reshape([3,4,5,6],[2,2])))print*,"107"
if(obj%k.ne.30)print*,"103"
if(associated(obj%ptr).neqv..true.)print*,"104" ,associated(obj%ptr)
if(associated(obj%ptr2).neqv..true.)print*,"105",associated(obj%ptr2)
if(associated(obj%ptr3).neqv..true.)print*,"106",associated(obj%ptr3)
print*,"pass"
end
