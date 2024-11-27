module  TEST_M
  real, private, save, dimension(2) :: R8 = (/1.0,-4.1/)
  real, public, pointer, dimension(:) :: R10 => null()
  double precision, private, dimension(2), target :: D11
  contains
  subroutine  module_initialize
   if (any(abs(R8-(/1.,-4.1/))>0.001))print *,'NG'
  end subroutine
  subroutine  TEST_DA
  end subroutine
end module  TEST_M
program main
  use TEST_M
  call module_initialize
print *,'pass'
end program main
