subroutine sub01()
  print *,'ok'
end subroutine
module mod
  interface 
    subroutine sub01()
    end subroutine
  end interface
  abstract interface 
    subroutine aaa()
    end subroutine
  end interface
  procedure(aaa),pointer :: ppp
  contains
  subroutine msub()
    ppp=>sub01
  end subroutine
end module
use mod
call msub()
call ppp()
end
