
program reduction_test
  parameter(N=32)
  complex*16 c16(N),c16t,c16a(10)
  real*8 r8(N)
  c16t=0
  c16a=0

!$omp simd
  do i=1,N
     c16(i) = i
     r8(i) = i
  enddo

!$omp simd reduction(+:c16t)
  do i=1,N
     c16t = c16t + c16(i)
  enddo
  write(6,*) c16t

  MM=N-1
!$omp simd reduction(+:c16a)
  do i=1,MM
     c16a(2) = c16a(2) + c16(i)
  enddo
  write(6,*) c16a(2)

  MM=N-2
!$omp simd reduction(+:c16t)
  do i=1,MM
     if (i>10) then
        c16t = c16t + c16(i)
     endif
  enddo
  write(6,*) c16t

  MM=N-3
!$omp simd reduction(+:c16a)
  do i=1,MM
     if (i>10) then
        c16a(2) = c16a(2) + c16(i)
     endif
  enddo
  write(6,*) c16a(2)

  MM=N-4
!$omp simd reduction(+:c16t)
  do i=1,MM
     if (r8(1) < 10) then
        c16t = c16t + c16(i)
     endif
  enddo
  write(6,*) c16t

  MM=N-5
!$omp simd reduction(+:c16a)
  do i=1,MM
     if (r8(1) < 10) then
        c16a(2) = c16a(2) + c16(i)
     endif
  enddo
  write(6,*) c16a(2)

end program reduction_test
