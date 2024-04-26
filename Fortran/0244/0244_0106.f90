module m1
type ty
 integer :: ii = 2
 contains
  procedure,pass(a) :: adn
  generic :: operator(+) => adn
end type

contains
 function adn(b,a)
  class(ty), INTENT(IN) :: a
  integer, INTENT(IN) :: b(2)
  integer,pointer,contiguous :: adn(:)
  allocate(adn(2))
  do i=1,2
   adn(i) = a%ii + b(i)
  end do
 end function
end module

program main
use m1
implicit none
type(ty) :: obj
integer :: ii(2)
ii = (/7,7/)

if(is_contiguous(ii+obj)) then
 print*,'pass'
else
 print*,'fail'
end if

end program
