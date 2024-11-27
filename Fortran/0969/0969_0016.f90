module mod01
 integer :: m01_ii01
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = m01_ii01
  end function
end module

use mod01

m01_ii01 = 3

print *,m01_func01()

end

