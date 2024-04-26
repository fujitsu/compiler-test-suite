type ty
integer::tar
character::t2
end type

integer,target,save::tar(3)
integer,target,save::tar2

type(ty),target,save::obj
call sub
contains
subroutine sub
 integer,pointer::ptr(:)=>tar(1:3:1)
 integer,pointer::ptr2=>obj%tar
 integer,pointer::ptr3=>tar(1)
 integer,pointer::ptr4=>tar2
 character,pointer::ptr5=>obj%t2
 character,target,save::t6
 character*1,target,save::t7(4)
 character,pointer::ptr6=>t6
 character,pointer::ptr7(:)
 data ptr7 /t7(1:3:2)/
 ptr=>tar(1:3:1)
 if(associated(ptr).neqv..true.)print*,"101"
 if(associated(ptr2).neqv..true.)print*,"102"
 if(associated(ptr3).neqv..true.)print*,"103"
 if(associated(ptr4).neqv..true.)print*,"104"
 if(associated(ptr5).neqv..true.)print*,"105"
 if(associated(ptr6).neqv..true.)print*,"106"
 if(associated(ptr7).neqv..true.)print*,"107"
 ptr =[1,2,3]
 if(any(tar.ne.[1,2,3]))print*,"108"
 ptr5 ="a"
 if(obj%t2.ne."a")print*,"109"
 print*,"PASS"
end
end
