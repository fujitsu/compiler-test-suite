type ty
integer,pointer :: ptr(:,:)
end type
type(ty)::obj
 allocate(obj%ptr(3,3))
obj%ptr = reshape([1,2,3,4,5,6,7,8,9],[3,3])
 call sub(obj%ptr(:,:)) 
 if(any(obj%ptr.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"109"
obj%ptr = reshape([1,2,3,4,5,6,7,8,9],[3,3])
 call sub(obj%ptr)
 if(any(obj%ptr.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"100"
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer,intent(in):: dmy(3,3)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"101"
  if(loc(dmy).ne.loc(obj%ptr))print*,"101"
  end subroutine
  end

