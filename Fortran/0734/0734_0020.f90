module vector

  type vec
    real, dimension(:), pointer :: x
  end type vec

  interface operator (+)
    module procedure sumvec
  end interface

contains

  function sumvec (a, b) result (c)
    type (vec), intent(in) :: a, b
    type (vec) :: c
    if (size(a%x) /= size(b%x)) then
      nullify (c%x)
    else
      allocate (c%x(size(a%x)))
      c%x = a%x + b%x
    end if
  end function sumvec

end module vector

program main
  use vector
  implicit none

  integer :: n, i
  type (vec) :: a, b, c
  n = 4
  allocate (a%x(n), b%x(n), c%x(n))
  do i = 1,n
    a%x(i) = i
    b%x(i) = 1.
  end do
  c = (a + b) + (a + b)
  if (any(abs(c%x-(/4,6,8,10/))>0.0001))print *,'error'
print *,'pass'
end program main
