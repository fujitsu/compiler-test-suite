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
end type

contains
 elemental function adn(b,a)
  integer, INTENT(IN) :: b
  class(ty), INTENT(IN) :: a
  integer :: adn
  adn = a%ii + b
 end function
 elemental function adn_tty3(b,a)
  class(tty3), INTENT(IN) :: a
  integer, INTENT(IN) :: b
  integer :: adn_tty3
  adn_tty3 = a%kk + b
 end function
end module

program main
use m1
implicit none
type(ty)  :: obj(3)
type(ty2) :: obj2(3)
type(tty3):: obj3(3)

integer :: ii(3)
ii = (/7,7,7/)

if(all((ii+obj)==9)) then
  print*,'pass1'
else
  print*,'101'
endif


obj2%ii=7
if(all((ii+obj2)==14)) then
  print*,'pass2'
else
  print*,'102'
endif


if(all((ii+obj3)==37)) then
 print*,'pass3'
else
 print*,'103'
end if

end program
