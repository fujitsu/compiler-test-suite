
program reduction_test
  parameter(N=32)
  complex*8 c8(N),c8t,c8b(N)

  m=1
!$omp simd
  do i=1,N
     c8(i) = i-10
     c8b(i) = m
     if (c8(i) .eq. 0) then
        c8(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  c8t=0
!$omp simd reduction(+:c8t)
  do i=1,N
     c8t = c8t + c8(i)
  enddo
  write(6,*) c8t
  c8t=0
!$omp simd reduction(-:c8t)
  do i=1,N
     c8t = c8t - c8(i)
  enddo
  write(6,*) c8t
  c8t=1
!$omp simd reduction(*:c8t)
  do i=1,N
     c8t = c8t * c8b(i)
  enddo
  write(6,*) c8t

end program reduction_test
