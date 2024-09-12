type ty
 integer  :: tar2(2)=[1,2]
end type
type(ty),target,save :: obj
type ty2
  integer ,pointer :: ptr1=>obj%tar2(1+1)
end type

type(ty2) :: obj2
if (associated(obj2%ptr1) .neqv. .true.)print*,"102",associated(obj2%ptr1)
if(associated(obj2%ptr1).neqv..false.) then
if( obj2%ptr1 .ne. 2)print*,"101"
endif
print*,"pass"
end
    
