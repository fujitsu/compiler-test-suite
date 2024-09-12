module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
  subroutine misub01()
  end subroutine
 end interface
 contains
  function m1func01() result(m1rst01)
   integer :: m1rst01
   m1rst01 = 1
  end function
  subroutine m1sub01()
  end subroutine
end module

use mod01

call csub01(mifunc01)
call csub01(m1func01)

call csub02(misub01)
call csub02(m1sub01)

print *,'pass'

contains
 subroutine csub01(ifunc01)
  interface
   function ifunc01() result(irst01)
    integer :: irst01
   end function
  end interface
 end subroutine
 subroutine csub02(isub01)
  interface
   subroutine isub01()
   end subroutine
  end interface
 end subroutine
end

function mifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

subroutine misub01()
end subroutine

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

subroutine isub01()
end subroutine
