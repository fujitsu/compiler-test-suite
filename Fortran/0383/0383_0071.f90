subroutine proc01()
  print *,'ok'
end subroutine
subroutine proc02(arg1)
  integer :: arg1
  if (100 .ne. arg1) print *,'fail'
end subroutine
module mod
  interface mod_proc
    module procedure  msub01,msub02
  end interface
  private :: msub01,musub02,mod_proc
  procedure(msub01),pointer :: ppp
  procedure(msub02),pointer :: qqq
  contains
  subroutine msub01() 
  end subroutine
  subroutine msub02(arg1)
    integer :: arg1
  end subroutine
end module

use mod
interface 
  subroutine proc01()
  end subroutine
  subroutine proc02(arg1)
    integer :: arg1
  end subroutine
end interface
ppp=>proc01
qqq=>proc02
call qqq(100)
call ppp()
end
