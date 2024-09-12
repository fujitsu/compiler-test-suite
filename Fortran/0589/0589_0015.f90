module m
  implicit none
  type base
    integer, allocatable :: data

  contains
    procedure :: assign
    generic :: assignment(=) => assign
    procedure, nopass :: f
  end type

  type(base), target :: trg

  contains
    function f()
    type(base), pointer::f
    f=>trg
  end function

  subroutine assign(to, from)
    class(base),intent(inout) :: to
    type(base),intent(in) :: from

    allocate(to%data, source=from%data)

    to%data = from%data
  end subroutine
end module

use m
implicit none
type(base):: b1(1,1), b2(1,1)

allocate(b2(1,1)%data)

b2(1,1)%data = 11

b1(1,1)%f() = b2(1,1)

b2(1,1)%data = 21
if (trg%data /= 11) print*, 101, trg%data
deallocate(b2(1,1)%data)
if (trg%data /= 11) print*, 102, trg%data
print*, "PASS"
end
