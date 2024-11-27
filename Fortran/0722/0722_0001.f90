function ifunc()
  ifunc = 100
end function
subroutine proc01(arg1)
  integer :: arg1
  print *,'proc01'
end subroutine
subroutine proc03(arg1,arg2)
  integer :: arg1,arg2
  print *,'proc02'
end subroutine
module mod
  private :: sub01,sub02
  interface
    subroutine sub01(arg1)
      integer :: arg1
    end subroutine
    subroutine sub02(arg1,arg2)
      integer :: arg1,arg2
    end subroutine
  end interface
  type,private :: str
    procedure(sub01),nopass,pointer:: ppp1 
    procedure(integer),pointer,nopass :: ppp2 => null()
    procedure(sub02),nopass,pointer :: ppp3 
  end type
  type :: str1
    type(str) :: sss
  end type
end module
use mod
interface
  subroutine proc01(arg1)
    integer :: arg1
  end subroutine
  subroutine proc03(arg1,arg2)
    integer :: arg1,arg2
  end subroutine
end interface
type(str1) :: sss1
procedure(integer) :: ifunc
sss1%sss%ppp1=>proc01
sss1%sss%ppp2=>ifunc
sss1%sss%ppp3=>proc03
print *,sss1%sss%ppp2()
call sss1%sss%ppp1(1)
call sss1%sss%ppp3(1,2)
end
