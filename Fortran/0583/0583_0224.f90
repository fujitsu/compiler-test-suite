module m
  implicit none
  type t1
    integer :: data
    type (t1), allocatable :: next
  contains
    procedure :: assign_t1
    generic :: assignment(=) => assign_t1
  end type

  type base
    type(t1),allocatable :: objT1
  contains
    procedure :: assign
    generic :: assignment(=) => assign
  end type

contains
  subroutine assign_t1(to, from)
    class(t1),intent(out) :: to
    type(t1),intent(in) :: from

    allocate(to%next, source=from%next)

    to%data = 5
    to%next%data = 6
    to%next%next%data = 7
    to%next%next%next%data = 8
  end subroutine

  subroutine assign(to, from)
    class(base),intent(out) :: to
    type(base),intent(in) :: from

    allocate(to%objT1, source=from%objT1)

    to%objT1%data = 55
    to%objT1%next%data = 66
    to%objT1%next%next%data = 77
    to%objT1%next%next%next%data = 88
  end subroutine
end module

use m
implicit none
type(base) :: b1, b2

allocate(b2%objT1)
allocate(b2%objT1%next)
allocate(b2%objT1%next%next)
allocate(b2%objT1%next%next%next)

b2%objT1%data = 1
b2%objT1%next%data = 2
b2%objT1%next%next%data = 3
b2%objT1%next%next%next%data = 4

b1 = b2

if (b1%objT1%data /= 55) print*, 101
if (b1%objT1%next%data /= 66) print*, 102
if (b1%objT1%next%next%data /= 77) print*, 103
if (b1%objT1%next%next%next%data /= 88) print*, 104
print*, "PASS"
end