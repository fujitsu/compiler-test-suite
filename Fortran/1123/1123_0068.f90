
module mm
contains
  integer*8 function linear_test(m)
    !$omp declare simd linear(val(m))
    integer(kind=8),intent(in):: m
    linear_test = m
    return
  end function linear_test
end module mm

program declare_test
  use mm
  parameter(N=32)
  integer*8 a(N),b(N),m,i8

!$omp simd
  do i=1,N
     a(i) = 0
     b(i) = 0
  enddo

  m=1
!$omp simd linear(m)
  do i=1,N
     a(i) = linear_test(m)
     m=m+1
  enddo
  write(6,1) a
!$omp simd linear(i8)
  do i8=1,N
     b(i8) = linear_test(i8)
  enddo
  write(6,1) b
  1 format(10i5)
end program declare_test
