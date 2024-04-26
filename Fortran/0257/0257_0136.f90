integer,pointer :: ptr(:)
allocate(ptr(5))
ptr= [1,2,3,4,5]
call sub3(ptr)
call sub3()
contains
subroutine sub3(ptr)
integer,optional,intent(in),pointer :: ptr(:)
if(present(ptr))then
call sub(ptr)
if(associated(ptr))then
call sub(ptr(:))
end if
end if
print*,"Pass"
end subroutine
subroutine sub(dmy)
  integer,contiguous,optional::dmy(:)
  if(present(dmy))then
  if(any(dmy.ne.[1,2,3,4,5]))print*,"105"
  endif
end subroutine
end

