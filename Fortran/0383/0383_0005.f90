subroutine proc1()
  print *,'proc1'
end subroutine
subroutine proc2()
  print *,'proc2'
end subroutine
module mod
  interface
    subroutine proc1()
    end subroutine
    subroutine proc2()
    end subroutine
  end interface
  type,private :: parent
    procedure(proc1),nopass,pointer :: ppp1
  end type
  type,extends(parent):: child
    procedure(proc2),nopass,pointer :: ppp2
  end type
end module
use mod
type(child) :: sss
sss%ppp2=>proc1
call sss%ppp2()
sss%ppp1=>proc2
call sss%ppp1()
print *,'ok'
end
