module mod
implicit none
 contains
 function usr01(p1,p2) result(ret)
 real :: ret

 type :: typ01
   sequence
   integer :: a1
   integer :: a2
   integer :: a3
 end type
 type(typ01),intent(in) :: p1
 integer,intent(in) :: p2
 pointer :: p1
 ret=p1%a2+p2+100
 end function
end

use mod
implicit none
interface operator(.aaa.)
 module procedure usr01
end interface

  type :: typ01
    sequence
    integer :: a1
    integer :: a2
    integer :: a3
  end type
  type(typ01) :: inp01

  integer :: ans
  pointer :: inp01

  allocate(inp01)
  inp01%a2=3

  ans = inp01.aaa.3
  if (ans.ne.106) write(6,*) "NG"
  print *,'pass'
end
