integer,target::t(5) =[1,2,3,4,5]
integer,pointer::ptr(:)
ptr=>t
call sub3(ptr)
contains
subroutine sub3(ptr)
integer,pointer :: ptr(:)
call sub(ptr)
call sub(ptr(:))
print*,"Pass"
end subroutine
subroutine sub(dmy)
  integer, contiguous, optional::dmy(:)
  if(present(dmy))then
  if(any(dmy.ne.[1,2,3,4,5]))print*,"105",dmy
  endif
end subroutine
end

