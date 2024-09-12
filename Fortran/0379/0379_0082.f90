subroutine sub() bind(C)
  print *,'ok'
end subroutine

module mod
  interface
    subroutine proc() bind(C)
    end subroutine
  end interface
  type :: str
    procedure(proc),pointer,nopass :: aaa
  end type
end module
use mod
interface
  subroutine sub() bind(C)
  end subroutine
end interface
type(str) :: sss
sss%aaa=>sub
call sss%aaa()
end
