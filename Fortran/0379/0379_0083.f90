function ifunc() bind(C)
  ifunc = 100
end function

module mod
  interface
    function ifunc() bind(C)
    end function
  end interface
  type :: str
    procedure(ifunc),pointer,nopass :: aaa
  end type
end module
use mod
type(str) :: sss
sss%aaa=>ifunc
if (sss%aaa()/=100) print *,'ng'
print *,'ok'
end
