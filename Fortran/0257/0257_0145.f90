integer,target::t1(5)=[1,2,3,4,5]
integer,target::t2(5)=[1,2,3,4,5]
integer,pointer::ptr1(:)
integer,pointer::ptr2(:)
ptr1=>t1
ptr2=>t2
callsub3(ptr1)
callsub3(ptr1,ptr2)
call sub3()
print*,"Pass"
contains
subroutine sub3(ptr,ptr2)
integer,optional,pointer :: ptr(:)
integer,optional,pointer :: ptr2(:)
if(present(ptr).and.present(ptr2))then
call sub(ptr) 
call sub(ptr,ptr2) 
call sub(ptr2) 
if(associated(ptr))then
call sub(ptr(:))
call sub(ptr(:),ptr2)
call sub(ptr,ptr2) 
end if
if(associated(ptr2))then
call sub(ptr,ptr2(:))
call sub(ptr,ptr2(:))
call sub(ptr,ptr2)
end if
end if
call sub(ptr2)
call sub(ptr,ptr2)
call sub(ptr)
end subroutine
subroutine sub(dmy,dmy2)
  integer,optional::dmy(:)
  integer,optional::dmy2(:)
  if(present(dmy))then
  if(any(dmy.ne.[1,2,3,4,5]))print*,"105"
  endif
  if(present(dmy2))then
  if(any(dmy2.ne.[1,2,3,4,5]))print*,"105"
  endif
end subroutine
end

