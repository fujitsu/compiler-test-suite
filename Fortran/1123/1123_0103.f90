
program reduction_test
  parameter(N=32)
  complex*4 c4(N),c4t,c4b(N)
  complex*8 tt
  m=1
!$omp simd
  do i=1,N
     c4(i) = i-10
     c4b(i) = m
     if (c4(i) .eq. 0) then
        c4(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  c4t=0
!$omp simd reduction(+:c4t)
  do i=1,N
     c4t = c4t + c4(i)
  enddo
  tt = c4t
  write(6,*) tt
  c4t=0
!$omp simd reduction(-:c4t)
  do i=1,N
     c4t = c4t - c4(i)
  enddo
  tt = c4t
  write(6,*) tt
  c4t=1
!$omp simd reduction(*:c4t)
  do i=1,N
     c4t = c4t * c4b(i)
  enddo
  tt = c4t
  write(6,*) tt

end program reduction_test
