subroutine foo(n1,n2,a,b,c,x,y,z,end1,end2)
  implicit none
  integer :: n1,n2
  integer :: end1,end2
  real(8) :: a(n1), b(n1), c(n1)
  real(8) :: x(n2), y(n2), z(n2)
  integer :: i

  !$omp simd
  do i=1,end1
     a(i) = b(i) + c(i)
  end do

  do i=1,end2
     x(i) = y(i) + z(i)
  end do

end subroutine foo


program main
  print *,'PASS'
end
