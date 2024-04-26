type ty
integer,pointer :: ptr(:,:)
end type
type(ty)::obj
allocate(obj%ptr(3,3))
call sub(obj%ptr) 
call sub(obj%ptr(:,:)) 
print*,"Pass"
contains
subroutine sub(dmy)
  integer,contiguous,optional:: dmy(:,:)
  if(present(dmy))then
   dmy= 1
  endif
  end subroutine
end
