integer,target,save::tar = 2
integer,target,save::ta(5) = [1,2,3,4,5]
type ty
         integer::arr(2) = [1,2]
         integer,pointer::ptr(:)=>ta(1:1)
         integer,pointer::ptr2=>tar
         integer,pointer::ptr3(:)=>ta(1:5:2)
         integer,pointer::ptr4=>ta(2)
end type ty
type(ty)::obj2
type(ty)::obj3
if(associated(obj2%ptr).neqv..true.)print*,"103",associated(obj2%ptr)
if(associated(obj2%ptr2).neqv..true.)print*,"103",associated(obj2%ptr2)
if(associated(obj2%ptr3).neqv..true.)print*,"103",associated(obj2%ptr3)
if(associated(obj2%ptr4).neqv..true.)print*,"103",associated(obj2%ptr3)
if(associated(obj3%ptr).neqv..true.)print*,"103",associated(obj2%ptr)
if(associated(obj3%ptr2).neqv..true.)print*,"103",associated(obj2%ptr2)
if(associated(obj3%ptr3).neqv..true.)print*,"103",associated(obj2%ptr3)
if(associated(obj3%ptr4).neqv..true.)print*,"103",associated(obj2%ptr3)
if(any(obj3%arr.ne.[1,2]))print*,"104"
if(any(obj2%arr.ne.[1,2]))print*,"104"
print*,"PASS"
end
