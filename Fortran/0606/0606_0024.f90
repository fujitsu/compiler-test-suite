module m1
type ty
 integer :: ii = 2
 contains
  procedure,PRIVATE,PASS(a) :: asn
  generic :: assignment(=) => asn
end type

contains
 elemental subroutine asn(a,b)
  CLASS(ty), INTENT(INOUT) :: a
  integer, INTENT(IN) :: b
  a%ii = b
 end subroutine
end module

program main
use m1
implicit none
type(ty) :: obj(2)
integer :: ii(2)
ii = (/7,7/)

obj = ii
if(all(obj%ii==7)) then
 print*,'pass'
else
 print*,'fail'
end if
end program
