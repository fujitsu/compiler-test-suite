
module mm
contains
  integer function linear_test(m)
    !$omp declare simd linear(ref(m))
    integer(kind=4),intent(in):: m
    linear_test = m
    return
  end function linear_test
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
!$omp simd linear(m)
  do i=1,N
     a(i) = linear_test(m)
     m=m+1
  enddo
  write(6,1) a
!$omp simd linear(i)
  do i=1,N
     b(i) = linear_test(i)
  enddo
  write(6,1) b
  1 format(10i5)
end program declare_test
