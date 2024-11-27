module mod
implicit none
 contains
 function usr01(p1,p2) result(ret)
 real :: ret

 integer,intent(in) :: p1
 integer,intent(in) :: p2
 pointer :: p2
 ret=p1+p2+100
 end function
end

use mod
implicit none
interface operator(.aaa.)
 module procedure usr01
end interface


  type :: typ01
    integer :: a1
    integer,pointer :: a2
    integer :: a3
  end type
  type(typ01) :: int02

  integer :: ans

  allocate(int02%a2)
  int02%a2=3

  ans = 3.aaa.int02%a2
  if (ans.ne.106) write(6,*) "NG"
  print *,'pass'
end
