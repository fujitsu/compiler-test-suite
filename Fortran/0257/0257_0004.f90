type ty
integer,pointer :: ptr(:,:)
end type
type(ty)::obj
obj%ptr=>NULL()
call sub(obj) 
call sub()
allocate(obj%ptr(3,3))
obj%ptr=reshape([1,2,3,4,5,6,7,8,9],[3,3])
call sub(obj) 
print*,"Pass"
contains
subroutine sub(dmy)
  type(ty),optional:: dmy
  if(present(dmy))then
   call sub2(dmy%ptr)
   if(associated(dmy%ptr))then
    call sub2(dmy%ptr(:,:))
    endif
  endif
  end subroutine
  subroutine sub2(p)
  integer,optional,contiguous ::p(:,:)
  if(present(p))then
   if(any(p.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"101"
  endif
  end subroutine
end
