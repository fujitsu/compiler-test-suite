module mod01
 type m01_ty01
  integer :: m01_t01_ii01
 end type
contains
subroutine isub01(is01_arg01)
 class(m01_ty01),  allocatable :: is01_arg01
end subroutine
end module

use mod01

class(m01_ty01), allocatable :: m01_t01_cl01

call isub01(m01_t01_cl01)

print *,'pass'
end

