
program reduction_test
  parameter(N=32)
  complex*8 c8(N),c8t,c8a(10)
  real*4 r4(N)
  c8t=0
  c8a=0
!$omp simd
  do i=1,N
     c8(i) = i
     r4(i) = i
  enddo

!$omp simd reduction(+:c8t)
  do i=1,N
     c8t = c8t + c8(i)
  enddo
  write(6,*) c8t

!$omp simd reduction(+:c8a)
  do i=1,N-1
     c8a(2) = c8a(2) + c8(i)
  enddo
  write(6,*) c8a(2)

!$omp simd reduction(+:c8t)
  do i=1,N-2
     if (i>10) then
        c8t = c8t + c8(i)
     endif
  enddo
  write(6,*) c8t

!$omp simd reduction(+:c8a)
  do i=1,N-3
     if (i>10) then
        c8a(2) = c8a(2) + c8(i)
     endif
  enddo
  write(6,*) c8a(2)

!$omp simd reduction(+:c8t)
  do i=1,N-4
     if (r4(1) < 10) then
        c8t = c8t + c8(i)
     endif
  enddo
  write(6,*) c8t

!$omp simd reduction(+:c8a)
  do i=1,N-5
     if (r4(1) < 10) then
        c8a(2) = c8a(2) + c8(i)
     endif
  enddo
  write(6,*) c8a(2)

end program reduction_test
