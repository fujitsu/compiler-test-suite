
implicit none
block
interface
 function adn(a,b)
  integer, INTENT(IN) :: a
  character(*), INTENT(IN) :: b
  integer :: adn
 end function

 subroutine assn(b,a)
  integer, INTENT(OUT) :: b
  character(*), INTENT(IN) :: a
 end subroutine
end interface

type ty
 integer :: ii = 2
 contains
  procedure,nopass :: adn
  procedure,nopass :: assn
end type

type(ty) :: obj
integer :: res

if(obj%adn(2,"abc")/=5) print*,101
call obj%assn(res,"abctech")
if(res==7) print*,"pass"
end block
end program

 function adn(a,b)
  integer, INTENT(IN) :: a
  character(*), INTENT(IN) :: b
  integer :: adn
  adn = a + len(b)
 end function

 subroutine assn(b,a)
  integer, INTENT(OUT) :: b
  character(*), INTENT(IN) :: a
  b = len(a)
 end subroutine
