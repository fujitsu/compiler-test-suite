
program reduction_test
  parameter(N=32)
  real*8 r8(N),r8t,r8a(10)
  r8t=0
  r8a=0
!$omp simd
  do i=1,N
     r8(i) = i
  enddo

!$omp simd reduction(+:r8t)
  do i=1,N
     r8t = r8t + r8(i)
  enddo
  write(6,*) r8t

  MM=N-1
!$omp simd reduction(+:r8a)
  do i=1,MM
     r8a(2) = r8a(2) + r8(i)
  enddo
  write(6,*) r8a(2)

  MM=N-2
!$omp simd reduction(+:r8t)
  do i=1,MM
     if (i>10) then
        r8t = r8t + r8(i)
     endif
  enddo
  write(6,*) r8t

  MM=N-3
!$omp simd reduction(+:r8a)
  do i=1,MM
     if (i>10) then
        r8a(2) = r8a(2) + r8(i)
     endif
  enddo
  write(6,*) r8a(2)

  MM=N-4
!$omp simd reduction(+:r8t)
  do i=1,MM
     if (r8(1) < 10) then
        r8t = r8t + r8(i)
     endif
  enddo
  write(6,*) r8t

  MM=N-5
!$omp simd reduction(+:r8a)
  do i=1,MM
     if (r8(1) < 10) then
        r8a(2) = r8a(2) + r8(i)
     endif
  enddo
  write(6,*) r8a(2)

end program reduction_test
