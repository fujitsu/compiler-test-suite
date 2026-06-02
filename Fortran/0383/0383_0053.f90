module mod
  type :: str
    integer :: iii
  end type
  interface
    subroutine proc(arg1)
      import str
      type(str) :: arg1
    end subroutine
  end interface
  procedure(proc),pointer :: ppp => null()
  procedure(proc) :: sub
  contains 
  subroutine msub()
    type(str) :: sss = str(100)
    ppp=>sub
    call ppp(sss)
  end subroutine
end module

subroutine sub(arg1)
use mod
procedure(proc) :: sub01
type(str) :: arg1
if ( 100 .ne. arg1%iii ) print *,'fail'
arg1%iii = 200
ppp=>sub01
call sub01(arg1)
end subroutine

subroutine sub01(arg1)
use mod
type(str) :: arg1
if ( 200 .ne. arg1%iii ) print *,'fail'
end subroutine

use mod
call msub()
print *,'ok'
end
