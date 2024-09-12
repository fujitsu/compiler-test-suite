module point_lib
  type point
    private
    integer :: x,y
  contains
    procedure get_x, get_y
  end type
  interface point
    module procedure one_arg_const
    module procedure two_arg_const
  end interface
contains
  type(point) function one_arg_const(i)
    one_arg_const%x = i
    one_arg_const%y = i
  end function
  type(point) function two_arg_const(i,j)
    two_arg_const%x = i
    two_arg_const%y = j
  end function
  integer function get_x(this)
    class(point) this
    get_x = this%x
  end function
  integer function get_y(this)
    class(point) this
    get_y = this%y
  end function
end module

use point_lib
type(point) p1, p2
p1 = point(2)
p2 = point(3,4)
if (p1%get_x() /= 2) print *,1
if (p1%get_y() /= 2) print *,2
if (p2%get_x() /= 3) print *,3
if (p2%get_y() /= 4) print *,4
print *,'pass'
end
