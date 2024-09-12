type ty
integer::arr
integer::arr2(3,3)
end type
type(ty)::obj(5)
integer,pointer::ptr
integer,pointer::ptr2
integer,target::t1=30
data obj(1:5:1)%arr,ptr,obj(1)%arr2(1:3:2,1:3:2),ptr2 /1,2,3,4,5,t1,0*1,4*5,t1/
if(any(obj(1)%arr2.ne.reshape([5,0,5,0,0,0,5,0,5],[3,3])))print*,"102"
if(associated(ptr).neqv..true.)print*,"105",associated(ptr)
print*,"PASS"
End 


