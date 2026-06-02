
program reduction_test
  parameter(N=32)
  real*8 r8(N),r8t,r8b(N)

  m=1
!$omp simd
  do i=1,N
     r8(i) = i-10
     r8b(i) = m
     if (r8(i) .eq. 0) then
        r8(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  r8t=0
!$omp simd reduction(+:r8t)
  do i=1,N
     r8t = r8t + r8(i)
  enddo
  write(6,*) r8t
  r8t=0
!$omp simd reduction(-:r8t)
  do i=1,N
     r8t = r8t - r8(i)
  enddo
  write(6,*) r8t
  r8t=1
!$omp simd reduction(*:r8t)
  do i=1,N
     r8t = r8t * r8b(i)
  enddo
  write(6,*) r8t
  r8t=0
!$omp simd reduction(max:r8t)
  do i=1,N
     r8t = max(r8t , r8(i))
  enddo
  write(6,*) r8t
  r8t=5
!$omp simd reduction(min:r8t)
  do i=1,N
     r8t = min(r8t , r8(i))
  enddo
  write(6,*) r8t


end program reduction_test
