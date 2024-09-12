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
  procedure,pass(a) :: asn => asn2
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
end module

program main
use m1
implicit none
type(ty) :: obj(2)
type(ty2) :: obj2(2)
integer :: ii(2)
ii = (/7,7/)

obj = ii
if(all(obj%ii==7)) then
  obj2 = ii
  if(all(obj2%ii/=6 .and. obj2%jj/=7)) print*,101
  print*,'pass'
else
  print*,'fail'
end if
end program
