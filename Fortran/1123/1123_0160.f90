

program userinv_test
  parameter(N=32)
  integer a(N)

  m=1
!$omp simd
  do i=1,N
     a(i) = m
     m=m+1
  enddo
  write(6,1) a
  1 format(10i5)
end program userinv_test
