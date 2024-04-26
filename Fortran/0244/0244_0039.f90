 module mmm
 type t
 integer :: ii
 contains
 final :: fs,fa
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
 subroutine aaa(aa,bb,cc)
 class(t),intent(out)::aa
 class(t),intent(out)::bb(:)
 class(t),intent(inout)::cc(:)
 end subroutine
 end module
 use mmm
 type(t) :: aa
 type(t) :: bb(2)
 type(t) :: cc(2)
 aa%ii = 20
 bb(1)%ii = 30
 bb(2)%ii = 40
 cc(1)%ii = 50
 cc(2)%ii = 60
 call aaa(aa,bb,cc)
 end
