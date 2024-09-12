subroutine proc01()
  print *,'proc01'
end subroutine
subroutine proc02()
  print *,'proc02'
end subroutine
module mod01
  interface
    subroutine sub()
    end subroutine
  end interface
  procedure(sub),pointer :: ppp
  procedure(sub),pointer :: qqq
end module
module mod02
  use mod01,aaa=>ppp,bbb=>qqq
  procedure(sub),pointer :: ppp
  procedure(sub),pointer :: qqq
end module
use mod02
interface
  subroutine proc01()
  end subroutine
  subroutine proc02()
  end subroutine
end interface
ppp=>proc01
qqq=>proc02
call ppp()
call qqq()
print *,'ok'
end
