type ty
integer,pointer :: ptr(:,:)
end type
type(ty)::obj
obj%ptr=>NULL()
call sub(obj) 
print*,"Pass"
contains
subroutine sub(dmy)
  type(ty):: dmy
    call sub2(dmy%ptr)
  end subroutine
  subroutine sub2(p)
  integer,optional,contiguous ::p(:,:)
  if(present(p))then
   print*,"101"
   if(any(p.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"101"
  endif
  end subroutine
end
