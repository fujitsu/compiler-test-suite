module mod
implicit none
 contains
 function usr01(p1,p2) result(ret)
 real :: ret

 integer,intent(in) :: p1
 integer,intent(in) :: p2
 pointer :: p1
 pointer :: p2
 ret=p1+p2+100
 end function
end

use mod
implicit none
interface operator(.aaa.)
 module procedure usr01
end interface

  integer :: ans

  ans = fun01().aaa.fun01()
  if (ans.ne.106) write(6,*) "NG"
  print *,'pass'
contains
  function fun01()
  implicit none
    integer :: fun01
    pointer :: fun01
    allocate(fun01)

    fun01 = 3
  end function
end
