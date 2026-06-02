call s1
print *,'sngtiso003:pass'
contains
subroutine s1
  use ISO_C_BINDING, only:C_PTR,C_NULL_PTR, C_ASSOCIATED,C_LOC
  type t1
     type(C_PTR) :: p1,p2
  end type t1
  type t2
  type(t1) :: set
  end type
  type t3
  type(t2)::set2
  end type
  type(t3)::set3
  integer,target::rr
  set3%set2%set%p1=C_NULL_PTR
  set3%set2%set%p2=C_NULL_PTR
  if(C_ASSOCIATED(set3%set2%set%p1,set3%set2%set%p2).neqv..false.) print *,'err1' 
  set3%set2%set%p1=C_LOC(rr)
  set3%set2%set%p2=C_LOC(rr)
  if(C_ASSOCIATED(set3%set2%set%p1,set3%set2%set%p2).neqv..true.) print *,'err2' 
end subroutine s1
end program
