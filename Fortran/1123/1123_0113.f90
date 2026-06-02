
program reduction_test
  parameter(N=32)
  real*16 r16(N),r16t,r16b(N)

  m=1
!$omp simd
  do i=1,N
     r16(i) = i-10
     r16b(i) = m
     if (r16(i) .eq. 0) then
        r16(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  r16t=0
!$omp simd reduction(+:r16t)
  do i=1,N
     r16t = r16t + r16(i)
  enddo
  write(6,*) r16t
  r16t=0
!$omp simd reduction(-:r16t)
  do i=1,N
     r16t = r16t - r16(i)
  enddo
  write(6,*) r16t
  r16t=1
!$omp simd reduction(*:r16t)
  do i=1,N
     r16t = r16t * r16b(i)
  enddo
  write(6,*) r16t
  r16t=0
!$omp simd reduction(max:r16t)
  do i=1,N
     r16t = max(r16t , r16(i))
  enddo
  write(6,*) r16t
  r16t=5
!$omp simd reduction(min:r16t)
  do i=1,N
     r16t = min(r16t , r16(i))
  enddo
  write(6,*) r16t


end program reduction_test
