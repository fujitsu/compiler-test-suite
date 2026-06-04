
program reduction_test
  parameter(N=32)
  complex*4 c4(N),c4t,c4a(10)
  complex*8 c8t,c8a(10)
  real*8 r8(N)
  c4t=0
  c4a=0

!$omp simd
  do i=1,N
     c4(i) = i
     r8(i) = i
  enddo

!$omp simd reduction(+:c4t)
  do i=1,N
     c4t = c4t + c4(i)
  enddo
  c8t = c4t
  write(6,*) c8t

  MM=N-1
!$omp simd reduction(+:c4a)
  do i=1,MM
     c4a(2) = c4a(2) + c4(i)
  enddo
  c8a(2) = c4a(2)
  write(6,*) c8a(2)

  MM=N-2
!$omp simd reduction(+:c4t)
  do i=1,MM
     if (i>10) then
        c4t = c4t + c4(i)
     endif
  enddo
  c8t = c4t
  write(6,*) c8t

  MM=N-3
!$omp simd reduction(+:c4a)
  do i=1,MM
     if (i>10) then
        c4a(2) = c4a(2) + c4(i)
     endif
  enddo
  c8a(2) = c4a(2)
  write(6,*) c8a(2)

  MM=N-4
!$omp simd reduction(+:c4t)
  do i=1,MM
     if (r8(1) < 10) then
        c4t = c4t + c4(i)
     endif
  enddo
  c8t = c4t
  write(6,*) c8t

  MM=N-5
!$omp simd reduction(+:c4a)
  do i=1,MM
     if (r8(1) < 10) then
        c4a(2) = c4a(2) + c4(i)
     endif
  enddo
  c8a(2) = c4a(2)
  write(6,*) c8a(2)

end program reduction_test
