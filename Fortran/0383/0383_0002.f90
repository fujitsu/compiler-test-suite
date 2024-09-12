subroutine mod_proc()
  print *,'ok'
end subroutine
module mod
  interface mod_proc
    module procedure  msub01,msub02
  end interface
  private :: msub01,musub02,mod_proc
  contains
  subroutine msub01() 
     print *,'msun01'
  end subroutine
  subroutine msub02(arg1)
    integer :: arg1
    print *,'msun02'
  end subroutine
end module

use mod
interface
  subroutine mod_proc()
  end subroutine
end interface
procedure(mod_proc),pointer :: ppp
ppp=>mod_proc
call ppp()
end
