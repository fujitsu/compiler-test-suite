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
 integer,intent(in) :: p1
 type(typ01),intent(in) :: p2
 pointer :: p2
 ret=p1+p2%a2+100
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
  type(typ01) :: inp02

  integer :: ans
  pointer :: inp02

  allocate(inp02)
  inp02%a2=3

  ans = 3.aaa.inp02
  if (ans.ne.106) write(6,*) "NG"
  print *,'pass'
end
