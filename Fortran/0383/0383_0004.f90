subroutine proc()
  print *,'ok'
end subroutine
module mod
  interface
    subroutine proc()
    end subroutine
  end interface
  type,private :: str
    procedure(proc),nopass,pointer :: ppp
  end type
  type(str) :: sss
end module
use mod
sss%ppp=>proc
call proc()
end
