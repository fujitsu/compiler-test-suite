function func01() result(ret)
  pointer :: ret
  allocate(ret)
  ret = 1
end function
function func02() result(ret)
  pointer :: ret(:)
  allocate(ret(1))
  ret = 10
end function
function func03() result(ret)
  allocatable :: ret
  allocate(ret)
  ret = 100
end function
module mod
interface
  function func01() result(ret)
    pointer :: ret
  end function
  function func02() result(ret)
    pointer :: ret(:)
  end function
  function func03() result(ret)
    allocatable :: ret
  end function
end interface
procedure(func01),pointer :: ppp1
procedure(func02),pointer :: ppp2
procedure(func03),pointer :: ppp3
protected :: ppp1,ppp2,ppp3
contains 
subroutine sub()
real,pointer :: p1
real,pointer :: p2(:)
real,allocatable :: p3
allocate(p3)
ppp1=>func01
ppp2=>func02
ppp3=>func03
p1=>ppp1()
p2=>ppp2()
p3=ppp3()
if (1 .ne. p1) print *,'fail'
if (10 .ne. p2(1)) print *,'fail'
if (100 .ne. p3) print *,'fail'
end subroutine
end module
use mod
call sub()
print *,'ok'
end
