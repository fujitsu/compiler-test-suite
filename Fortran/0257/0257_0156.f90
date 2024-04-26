 type ty
   integer,pointer :: ptr(:)
 end type
 type(ty)::obj
 allocate(obj%ptr(9))
 obj%ptr = [1,2,3,4,5,6,7,8,9]
 call sub(obj%ptr)
 if(any(obj%ptr.ne.[11,12,13,14,15,16,17,18,19]))print*,"101"
 print*,"PASS"
 contains
 subroutine sub(dmy)
  integer,contiguous:: dmy(:)
  if(any(dmy.ne.[1,2,3,4,5,6,7,8,9])) print*,"106"
  if(loc(dmy).ne.loc(obj%ptr))print*,"101"
  dmy = dmy + 10
 end subroutine
 end

