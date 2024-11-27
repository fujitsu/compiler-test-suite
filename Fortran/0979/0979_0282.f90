module mod
implicit none
 contains
 function usr01(p1,p2) result(ret)
 real :: ret

 integer,intent(in) :: p1
 integer,intent(in) :: p2
 pointer :: p1
 ret=p1+p2+100
 end function
end

use mod
implicit none
interface operator(.aaa.)
 module procedure usr01
end interface

  integer :: ans
  integer :: inp01
  integer :: inp02
  pointer :: inp01

  allocate(inp01)
  inp01=3
  inp02=3

  ans = inp01.aaa.inp02
  if (ans.ne.106) write(6,*) "NG"
  print *,'pass'
end
