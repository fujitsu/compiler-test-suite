module mod
  public :: aaa
  interface aaa
  end interface
  interface
     function fun() bind(c)
     end function fun
  end interface
end module mod
use mod
print *,'sngtp02:pass'
end
