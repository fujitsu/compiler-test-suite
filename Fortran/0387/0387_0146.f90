function func01() result(rst01) bind(c)
 integer :: rst01
 rst01 = 1
end function

subroutine sub01() bind(c, name = 'abc')
end subroutine

module mod01
 interface
  function ifunc01() result(irst01) bind(c)
   integer :: irst01
  end function
  subroutine isub01() bind(c)
  end subroutine
 end interface
 procedure(ifunc01), bind(c              ) :: func01
 procedure(isub01),  bind(c, name = 'abc') :: sub01
end module

use mod01

if (1.ne.func01()) print *,'error'
call sub01()

print *,'pass'

end
