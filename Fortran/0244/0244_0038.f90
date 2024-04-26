 module mmm
 type t
 integer :: ii
 end type t
 contains
 SUBROUTINE fs(dmy)
  TYPE(t),INTENT(IN)::dmy
  PRINT*,'INSIDE 1-D scalar destructor'
  PRINT*,dmy%ii
 END SUBROUTINE
 SUBROUTINE fa(dmy)
  TYPE(t),INTENT(IN)::dmy(:)
  PRINT*,'INSIDE 1-D array destructor'
  PRINT*,dmy%ii
 END SUBROUTINE
 subroutine aaa(aa,bb)
 class(t),intent(out)::aa
 class(t),intent(out)::bb(:)
 end subroutine
 end module
 use mmm
 type(t) :: aa
 type(t) :: bb(2)
 aa%ii = 20
 bb(1)%ii = 30
 bb(2)%ii = 40
 call aaa(aa,bb)
 print*,"Pass"
 end
