type ty
integer,pointer :: ptr(:)
end type
 type(ty)::obj
 allocate(obj%ptr(5))
 obj%ptr = [1,2,3,4,5]
  call sub2(obj%ptr)  
  if(any(obj%ptr.ne.[11,12,13,14,15]))print*,"101"
  Print*,"PASS"
  contains
  subroutine sub2(p)
  integer,contiguous::p(:)
  if(loc(p).ne.loc(obj%ptr))print*,"101"
  p = p +10
  end subroutine
end

