module m
  implicit none
  type str
     real(8), allocatable :: a(:)
  end type str
end module m

subroutine sub(n,x,b)
  use m
  implicit none
  integer :: i,n
  type(str) :: x
  real(8) :: b(n)

  do i=1,n
     x%a(i) = real(-i,kind=8)
     b(i) = sin(x%a(i))
  end do
end subroutine sub

program main
  use m
  implicit none
  type(str) :: x
  integer :: i
  integer,parameter :: n=16
  real(8) :: b(n), res

  allocate(x%a(n))
  call sub(n,x,b)

  do i=1,n
     res = sin(real(-i,kind=8))
     if (abs(b(i) - res) > 1.0e-15) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main
