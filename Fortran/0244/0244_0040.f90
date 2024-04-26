 module mmm
 type t
 integer :: ii
 contains
 final :: ff
 end type t
 contains
 SUBROUTINE ff(dmy)
  TYPE(t),INTENT(IN)::dmy
  PRINT*,'INSIDE 1-D array destructor'
  PRINT*,dmy%ii
 END SUBROUTINE
 subroutine aaa(dd)
 class(t),intent(inout)::dd 
 entry bbb(aa,bb)
 class(t),intent(out)::aa 
 class(t),intent(out)::bb
 end subroutine
 end module
 use mmm
 type(t) :: aa
 type(t) :: bb
 aa%ii = 20
 bb%ii = 30
 call bbb(aa,bb)
 end
