module m1
type ty
 integer :: ii = 2
 contains
  procedure,PASS(a) :: adn
  generic :: operator(+) => adn
end type

type,extends(ty) :: ty2
 integer :: jj=20
end type

type,extends(ty) :: tty3
 integer :: kk=30
 contains
  procedure,pass(a) :: adn => adn_tty3
  procedure,PASS(a) :: adn_new
  generic :: operator(+) => adn_new
end type

contains
 elemental function adn(b,a)
  class(ty), INTENT(IN) :: a
  integer, INTENT(IN) :: b
  integer :: adn
  adn = a%ii + b
 end function
 elemental function adn_tty3(b,a)
  class(tty3), INTENT(IN) :: a
  integer, INTENT(IN) :: b
  integer :: adn_tty3
  adn_tty3 = a%kk + b
 end function
 elemental function adn_new(b,a)
  class(tty3), INTENT(IN) :: a
  integer(2), INTENT(IN) :: b
  integer :: adn_new
  adn_new = a%kk + b + 2
 end function
end module

program main
use m1
implicit none
class(ty),pointer :: ptr(:)
type(ty),target :: obj(3)
type(ty2),target :: obj2(3)
type(tty3),target :: obj3(3)

integer :: ii(3)
integer(2) :: ii2(3)
ii = (/7,7,7/)
ii2 = (/7,7,7/)

ptr=>obj

if(all((ii+ptr)==9)) then

obj2%ii=7
ptr=>obj2

if(all((ii+ptr)/=14)) print*,102
ptr=>obj3

if(all((ii+ptr)/=37)) print*,103

if(all((ii2+obj3)/=39)) print*,104
 print*,'pass'
else
 print*,'fail'
end if

end program
