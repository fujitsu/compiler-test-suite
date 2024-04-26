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
 subroutine aaa(aa,bb)
 class(t),intent(out)::aa
 type(t),intent(in)::bb
 cc = bb%ii
 end subroutine
 end module
 use mmm
 type(t) :: aa
 type(t) :: bb
 aa%ii = 20
 bb%ii = 30
 call aaa(aa,bb)
 end
