
program reduction_test
  parameter(N=32)
  complex*32 c32(N),c32t,c32b(N)

  m=1
!$omp simd
  do i=1,N
     c32(i) = i-10
     c32b(i) = m
     if (c32(i) .eq. 0) then
        c32(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  c32t=0
!$omp simd reduction(+:c32t)
  do i=1,N
     c32t = c32t + c32(i)
  enddo
  write(6,*) c32t
  c32t=0
!$omp simd reduction(-:c32t)
  do i=1,N
     c32t = c32t - c32(i)
  enddo
  write(6,*) c32t
  c32t=1
!$omp simd reduction(*:c32t)
  do i=1,N
     c32t = c32t * c32b(i)
  enddo
  write(6,*) c32t

end program reduction_test
