function ifunc01()
  ifunc01 = 1
end function
function ifunc02()
  ifunc02 = 2
end function
subroutine aaa(i)
  integer,optional:: i
  external:: i
  print *,i()
end subroutine
subroutine bbb(i)
  integer,optional:: i
  procedure():: i
  print *,i()
end subroutine

module mod
contains
  subroutine sss(i)
    integer,optional:: i
    external:: i
  end subroutine
  subroutine sss1(i)
    integer,optional:: i
    procedure():: i
  end subroutine
end module
use mod
procedure(sss) :: aaa
procedure(sss1) :: bbb
integer,external :: ifunc01
integer :: ifunc02
procedure() :: ifunc02
call aaa(ifunc01)
call bbb(ifunc02)
print *,'pass '
end
