call s1
call s2
print *,'sngtiso001:pass'
contains
subroutine s1
  use ISO_C_BINDING, only:C_PTR,C_NULL_PTR, C_ASSOCIATED,C_LOC
     type(C_PTR) :: p1,p2
  integer,target::rr
  p1=C_NULL_PTR
  p2=C_NULL_PTR
  if(C_ASSOCIATED(p1,p2).neqv..false.) print *,'err1' 
  p1=C_LOC(rr)
  p2=C_LOC(rr)
  if(C_ASSOCIATED(p1,p2).neqv..true.) print *,'err2' 
end subroutine s1
subroutine s2
  use ISO_C_BINDING, only:C_PTR,C_NULL_PTR, C_ASSOCIATED,C_LOC
  type t1
     type(C_PTR) :: p1,p2
  end type t1
  type(t1) :: set
  integer,target::rr
  set%p1=C_NULL_PTR
  set%p2=C_NULL_PTR
  if(C_ASSOCIATED(set%p1,set%p2).neqv..false.) print *,'err1' 
  set%p1=C_LOC(rr)
  set%p2=C_LOC(rr)
  if(C_ASSOCIATED(set%p1,set%p2).neqv..true.) print *,'err2' 
end subroutine s2
end program
