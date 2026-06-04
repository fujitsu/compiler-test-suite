program linear_test
  parameter(N=32)
  integer a(N)

  do i=1,N
     a(i) = i
  enddo

!$omp simd aligned(a:4)
  do i=1,N
     a(i) = a(i) + 2
  enddo
  write(6,1) a
!$omp simd aligned(a:8)
  do i=1,N
     a(i) = a(i) + 2
  enddo
  write(6,1) a
!$omp simd aligned(a:16)
  do i=1,N
     a(i) = a(i) + 2
  enddo
  write(6,1) a
!$omp simd aligned(a:32)
  do i=1,N
     a(i) = a(i) + 2
  enddo
  write(6,1) a
!$omp simd aligned(a:64)
  do i=1,N
     a(i) = a(i) + 2
  enddo
  write(6,1) a
1 format(10i5)
end program linear_test
