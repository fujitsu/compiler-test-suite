function func01(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
  ret = arg1
end function
function func02(arg1) result(ret) bind(C,name="CDE")
  integer :: arg1,ret
  ret = arg1*2
end function
module mod
  interface
    function proc01(arg1) result(ret) bind(C,name="ABC")
      integer :: arg1,ret
    end function
    function proc02(arg1) result(ret) bind(C,name="CDE")
      integer :: arg1,ret
    end function
  end interface
  procedure(proc01),pointer :: ppp1
  procedure(proc02),pointer :: ppp2
  procedure(proc01),bind(C,name="ABC") :: func01
  procedure(proc02),bind(C,name="CDE") :: func02
end module
use mod
ppp1=>func01
ppp2=>func02
if ( 100 .ne. ppp1(100) ) print *,'fail'
if ( 400 .ne. ppp2(200) ) print *,'fail'
print *,'ok'
end
