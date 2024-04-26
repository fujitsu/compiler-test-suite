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

integer function fun(ii)
use m1
class(ty),pointer :: ptr(:)
type(ty),target :: obj(3)
integer :: ii(:)
ii = (/7,7,7/)
ptr=>obj
associate(aa=>adn(ii,ptr))
if(size(aa)/=3) print*,101
if(sizeof(aa)/=12) print*,102
if(all(shape(aa)/=3)) print*,103
if(all(aa == 9)) print*,'pass'
fun=aa(sizeof(aa(1))-1)
end associate
end function

interface
integer function fun(dmy)
integer :: dmy(:)
end function
end interface

integer :: jj(3)
xx = fun(jj)
if(xx/=9) print*,104,xx
end
