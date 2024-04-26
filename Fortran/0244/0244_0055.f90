module m1
type ty
 integer :: ii = 2
 contains
  procedure,PASS(a) :: adn
  generic :: operator(+) => adn
end type

contains
 elemental function adn(b,a)
  class(ty), INTENT(IN) :: a
  integer, INTENT(IN) :: b
  integer :: adn
  adn = a%ii + b
 end function
end module

program main
use m1
implicit none
type(ty) :: obj(2)
integer :: ii(2)
ii = (/7,7/)

if(is_contiguous(ii+obj)) then
 print*,'pass'
else
 print*,'fail'
end if

end program
