subroutine sub(arg1)
  integer :: arg1
  print *,arg1
end subroutine
function func1(arg1) result(ret)
  integer :: arg1,ret
  ret = arg1
end function
function func2(arg1) result(ret)
  integer :: arg1,ret
  ret = arg1
end function
module mod
interface
  subroutine proc01(arg1)
    integer :: arg1
  end subroutine
  function proc02(arg1) result(ret)
    integer :: arg1,ret
  end function
end interface
type :: parent
  procedure(proc01),pointer,nopass :: ppp1
  procedure(proc02),pointer,nopass :: ppp2
end type
type,extends(parent) :: child
  procedure(proc02),pointer,nopass :: ppp3
end type
end module

use mod
procedure(proc01) :: sub
procedure(proc02) :: func1
procedure(proc02) :: func2
type(child) :: sss
sss%ppp1=>null()
sss%parent%ppp1=>null()
sss%ppp2=>null()
sss%parent%ppp2=>null()
sss%ppp3=>null()
sss%ppp1=>sub
call sss%ppp1(100)
sss%parent%ppp1=>sub
call sss%parent%ppp1(200)
sss%ppp2=>func1
if ( 300 .ne. sss%ppp2(300) ) print *,'fail'
sss%parent%ppp2=>func1
if ( 400 .ne. sss%parent%ppp2(400) ) print *,'fail'
sss%ppp3=>func1
if ( 500 .ne. sss%ppp3(500) ) print *,'fail'
print *,'ok'
end
