
module mm
contains
  integer function uniform(mm,bb, bi)
    !$omp declare simd uniform(mm,bb, bi)
    integer,intent(in):: mm,bb,bi
    value::mm,bb,bi
    uniform = mm + bb + bi
  end function uniform
end module mm

program declare_test
  use mm
  parameter(N=32)
  integer a(N),m,b(N)

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = i*10
  enddo

  m=1
!$omp simd
  do i=1,N
     a(i) = uniform(m, b(5), b(i))
  enddo
  write(6,1) a
  1 format(10i5)
end program declare_test
