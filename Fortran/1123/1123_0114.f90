
program reduction_test
  parameter(N=32)
  real*2 r4(N),r4t,r4b(N)
  real*4 tt
  m=1
!$omp simd
  do i=1,N
     r4(i) = i-10
     r4b(i) = m
     if (r4(i) .eq. 0) then
        r4(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  r4t=0
!$omp simd reduction(+:r4t)
  do i=1,N
     r4t = r4t + r4(i)
  enddo
  tt = r4t
  write(6,*) tt
  r4t=0
!$omp simd reduction(-:r4t)
  do i=1,N
     r4t = r4t - r4(i)
  enddo
  tt = r4t
  write(6,*) tt
  r4t=1
!$omp simd reduction(*:r4t)
  do i=1,N
     r4t = r4t * r4b(i)
  enddo
  tt = r4t
  write(6,*) tt
  r4t=0
!$omp simd reduction(max:r4t)
  do i=1,N
     r4t = max(r4t , r4(i))
  enddo
  tt = r4t
  write(6,*) tt
  r4t=5
!$omp simd reduction(min:r4t)
  do i=1,N
     r4t = min(r4t , r4(i))
  enddo
  tt = r4t
  write(6,*) tt


end program reduction_test
