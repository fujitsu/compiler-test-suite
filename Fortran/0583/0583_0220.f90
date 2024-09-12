module m
  implicit none
  type base
    integer, allocatable :: data
    type(base),allocatable::obj

  contains
    procedure :: assign
    generic :: assignment(=) => assign
  end type

contains
  subroutine assign(to, from)
    class(base),intent(out) :: to
    type(base),intent(in) :: from

    allocate(to%data, source=from%data)
    allocate(to%obj, source=from%obj)

    to%data = 6
    to%obj%data = 7
    to%obj%obj%data = 8
  end subroutine
end module

use m
implicit none
type(base),allocatable:: b1, b2

allocate(b1)
allocate(b1%data)
allocate(b1%obj)
allocate(b1%obj%data)
allocate(b1%obj%obj)
allocate(b1%obj%obj%data)

allocate(b2)
allocate(b2%data)
allocate(b2%obj)
allocate(b2%obj%data)
allocate(b2%obj%obj)
allocate(b2%obj%obj%data)

b1%data = 3
b1%obj%data = 4
b1%obj%obj%data = 5

b2 = b1


if (b2%data /= 6) print*, 101
if (b2%obj%data /= 7) print*, 102
if (b2%obj%obj%data /= 8) print*, 103
print*, "PASS"
end
