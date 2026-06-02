
module mm
contains
  integer*1 function linear_test(m)
    !$omp declare simd linear(uval(m):1)
    integer(kind=1),intent(in):: m
    linear_test = m
    return
  end function linear_test
end module mm

program declare_test
  use mm
  parameter(N=32)
  integer*1 a(N),b(N),m,i1

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
!$omp simd linear(i1)
  do i1=1,N
     b(i1) = linear_test(i1)
  enddo
  write(6,1) b
  1 format(10i5)
end program declare_test
