
module mm
contains
  integer*1 function uniform(mm,bb, bi)
    !$omp declare simd uniform(mm,bb, bi)
    integer*1,intent(in):: mm,bb,bi
    value::mm,bb,bi
    uniform = mm - bb + bi
  end function uniform
end module mm

program declare_test
  use mm
  parameter(N=32)
  integer*1 a(N),m,b(N)

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = i
  enddo

  m=1
!$omp simd
  do i=1,N
     a(i) = uniform(m, b(5), b(i))
  enddo
  write(6,1) a
  1 format(10i5)
end program declare_test
