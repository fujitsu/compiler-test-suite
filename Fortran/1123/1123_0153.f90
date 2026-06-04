
program declare_test
  parameter(N=32)
  real*8 a(N),b(N),c(N)

!$omp simd
  do i=1,N
     a(i) = 3
     b(i) = i
     c(i) = i*10
  enddo
!$omp simd safelen(4) simdlen(4)
  do i=1,N
     c(i) = a(i) + b(i)
  enddo
  write(6,1) c
  1 format(8f10.3)
end program declare_test
