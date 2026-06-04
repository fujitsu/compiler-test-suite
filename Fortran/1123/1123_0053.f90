module mm
contains
  integer function aligned_test(aa,bb)
    !$omp declare simd aligned(aa:64) aligned(bb:32)
    integer,intent(in):: aa,bb
    value::aa,bb
    aligned_test = aa + bb
  end function aligned_test
end module mm

program declare_test
  use mm
  parameter(N=32)
  integer a(N),b(N)

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = 3
  enddo

!$omp simd
  do i=1,N
     a(i) = aligned_test(a(i),b(i))
  enddo
  write(6,1) a
  1 format(10i5)
end program declare_test
