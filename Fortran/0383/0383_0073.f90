function ifunc()
  ifunc = 100
end function
subroutine proc01(arg1)
  integer :: arg1
  if (1 .ne. arg1) print *,'fail'
end subroutine
subroutine proc03(arg1,arg2)
  integer :: arg1,arg2
  if (1 .ne. arg1) print *,'fail'
  if (2 .ne. arg2) print *,'fail'
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
  type :: str
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
if (100 .ne. sss1%sss%ppp2()) print *,'fail'
call sss1%sss%ppp1(1)
call sss1%sss%ppp3(1,2)
print *,'ok'
end
