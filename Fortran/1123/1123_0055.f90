module mm
contains
  integer function linear(m)
    !$omp declare simd linear(m)
    integer,intent(in):: m
    value::m
    linear = m
  end function linear
end module mm

program declare_test
  use mm
  parameter(N=32)
  integer a(N),b(N)

!$omp simd
  do i=1,N
     a(i) = 0
     b(i) = 0
  enddo

  m=1
!$omp simd
  do i=1,N
     a(i) = linear(m)
     m=m+1
  enddo
  write(6,1) a
!$omp simd
  do i=1,N
     b(i) = linear(i)
  enddo
  write(6,1) b
  1 format(10i5)
end program declare_test
