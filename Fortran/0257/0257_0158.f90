type ty
integer,pointer :: ptr(:)
end type
type(ty)::obj
 allocate(obj%ptr(5))
obj%ptr = [1,2,3,4,5]
 call sub(obj%ptr(:))
 if(any(obj%ptr.ne.[11,12,13,14,15]))print*,"100"
obj%ptr = [1,2,3,4,5]
 call sub(obj%ptr)
 if(any(obj%ptr.ne.[11,12,13,14,15]))print*,"100"
 print*,"Pass"
  contains
  subroutine sub(dmy)
  integer,contiguous:: dmy(:)
  if(any(dmy.ne.[1,2,3,4,5]))print*,"101"
  if(loc(dmy).ne.loc(obj%ptr))print*,"101"
  dmy = dmy + 10
  end subroutine
  end

