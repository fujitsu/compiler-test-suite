module m1
type ty
 integer :: ii = 2
 contains
  procedure,PRIVATE,PASS(a) :: asn
  generic :: assignment(=) => asn
end type

type,extends(ty) :: ty2
 integer :: jj=20
 contains
  procedure,PRIVATE,PASS(a) :: asn_new
  procedure,pass(a) :: asn => asn2
  generic :: assignment(=) => asn_new
end type

contains
 elemental subroutine asn(a,b)
  class(ty), INTENT(INOUT) :: a
  integer, INTENT(IN) :: b
  a%ii = b
 end subroutine

 elemental subroutine asn2(a,b)
  class(ty2), INTENT(INOUT) :: a
  integer, INTENT(IN) :: b
  a%ii = b-1
  a%jj = b
 end subroutine

 elemental subroutine asn_new(a,b)
  class(ty2), INTENT(INOUT) :: a
  integer(2), INTENT(IN) :: b
  a%ii = b-2
  a%jj = b-1
 end subroutine
end module

program main
use m1
implicit none
class(ty),allocatable :: alc(:)
type(ty) :: obj(2)
type(ty2) :: obj2(2)
integer :: ii(2)
integer(2) :: ii2(2)
ii = (/7,7/)
ii2 = (/9,9/)

allocate(alc,source=obj)

alc = ii

if(all(alc%ii==7)) then
 deallocate(alc)
 allocate(alc,source=obj2)
 alc = ii
 select type(alc)
 type is (ty2)
  obj2 = ii2
  if(all(alc%ii/=6 .and. alc%jj/=7)) print*,101
  if(all(obj2%ii/=7 .and. alc%jj/=8)) print*,102
 end select

 print*,'pass'
else
 print*,'fail'
end if

end program
