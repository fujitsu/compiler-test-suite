module shape_mod
type shape
    integer :: color
    logical :: filled
    integer :: x
    integer :: y
contains
    procedure :: initialize
end type shape

type, extends(shape) :: rectangle
    integer :: length
    integer :: width
end type rectangle

type, extends(rectangle) :: square
end type square

interface
    subroutine initialize(sh, color, filled, x, y, length, width)
        import shape
        class(shape) :: sh
        integer :: color
        logical :: filled
        integer :: x
        integer :: y
        integer, optional :: length
        integer, optional :: width
  end subroutine
end interface
end module

use shape_mod
 type(shape) :: shp
 procedure(initialize),pointer::ptr =>initialize
 call shp%initialize(1, .true., 10, 20)
 call ptr(shp,1, .true., 10, 20)
end
 subroutine initialize(sh, color, filled, x, y, length, width)
  use shape_mod
        class(shape) :: sh
        integer :: color
        logical :: filled
        integer :: x
        integer :: y
        integer, optional :: length
        integer, optional :: width
        print*,"PASS"
  end subroutine

