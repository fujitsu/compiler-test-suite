
program reduction_test
  parameter(N=32)
  real*4 r4(N),r4t,r4a(10)
  r4t=0
  r4a=0
!$omp simd
  do i=1,N
     r4(i) = i
  enddo

!$omp simd reduction(+:r4t)
  do i=1,N
     r4t = r4t + r4(i)
  enddo
  write(6,*) r4t

!$omp simd reduction(+:r4a)
  do i=1,N-1
     r4a(2) = r4a(2) + r4(i)
  enddo
  write(6,*) r4a(2)

!$omp simd reduction(+:r4t)
  do i=1,N-2
     if (i>10) then
        r4t = r4t + r4(i)
     endif
  enddo
  write(6,*) r4t

!$omp simd reduction(+:r4a)
  do i=1,N-3
     if (i>10) then
        r4a(2) = r4a(2) + r4(i)
     endif
  enddo
  write(6,*) r4a(2)

!$omp simd reduction(+:r4t)
  do i=1,N-4
     if (r4(1) < 10) then
        r4t = r4t + r4(i)
     endif
  enddo
  write(6,*) r4t

!$omp simd reduction(+:r4a)
  do i=1,N-5
     if (r4(1) < 10) then
        r4a(2) = r4a(2) + r4(i)
     endif
  enddo
  write(6,*) r4a(2)

end program reduction_test
