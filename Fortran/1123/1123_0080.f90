program linear_test
  parameter(N=32)
  integer a(N),b(N)

!$omp simd linear(i)
  do i=1,N
     a(i) = i
     b(i) = i*2
  enddo

  m=1
!$omp simd linear(i) linear(m:2)
  do i=1,N
     a(i) = b(i) - i + m
     m=m+2
  enddo
  write(6,1) a
1 format(10i5)
end program linear_test
