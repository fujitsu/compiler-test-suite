
program reduction_test
  parameter(N=32)
  complex*16 c16(N),c16t,c16b(N)

  m=1
!$omp simd
  do i=1,N
     c16(i) = i-10
     c16b(i) = m
     if (c16(i) .eq. 0) then
        c16(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  c16t=0
!$omp simd reduction(+:c16t)
  do i=1,N
     c16t = c16t + c16(i)
  enddo
  write(6,*) c16t
  c16t=0
!$omp simd reduction(-:c16t)
  do i=1,N
     c16t = c16t - c16(i)
  enddo
  write(6,*) c16t
  c16t=1
!$omp simd reduction(*:c16t)
  do i=1,N
     c16t = c16t * c16b(i)
  enddo
  write(6,*) c16t

end program reduction_test
