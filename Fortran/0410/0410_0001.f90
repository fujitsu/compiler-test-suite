module point_lib
  type point
    integer :: x
  end type
  interface point
    module procedure fun
  end interface
contains
  type(point) function fun()
    fun%x=1
  end function
end module

use point_lib
print *,'pass'
end
