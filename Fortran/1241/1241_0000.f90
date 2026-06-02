module mod
  public :: assignment(=)
  interface
     function fun() bind(c)
     end function fun
  end interface
end module mod
use mod
print *,'sngtp01:pass'
end
