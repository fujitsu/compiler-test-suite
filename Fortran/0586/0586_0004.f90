type ty1
integer::tar =10
integer::ta(5)
end type
type(ty1),target::obj
type ty
         integer::arr(2)
         integer,pointer::ptr=>obj%tar
         integer,pointer::ptr2=>obj%tar
         integer,pointer::ptr3(:)=>obj%ta(2:4)
         integer,pointer::ptr4=>obj%ta(2)
end type ty
type(ty)::obj2
obj%tar = 20
obj%ta =  [1,2,3,4,5]
if(associated(obj2%ptr).neqv..true.)print*,"101",associated(obj2%ptr)
if(associated(obj2%ptr2).neqv..true.)print*,"102",associated(obj2%ptr2)
if(associated(obj2%ptr3).neqv..true.)print*,"103",associated(obj2%ptr3)
if(associated(obj2%ptr4).neqv..true.)print*,"104",associated(obj2%ptr4)
print*,"PASS"

end
