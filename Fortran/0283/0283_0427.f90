module m1
type ty
 integer :: ii = 2
end type

type,extends(ty) :: ty2
 integer :: jj=20
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
class(ty),pointer :: ptr(:)
type(ty),target :: obj(3)

integer :: ii(3)
ii = (/7,7,7/)

ptr=>obj

associate(aa=>adn(ii,ptr))
if(all(aa==9)) print*,'pass'
end associate

end program
