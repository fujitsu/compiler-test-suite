
program reduction_test
  parameter(N=32)
  real*4 r4(N),r4t,r4a(N)
  real*16 x(N)
  real*8  y(N)

  m=1
!$omp simd
  do i=1,N
     r4(i) = i-10
     x(i) = i
     y(i) = i
     r4a(i) = m
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
     r4t = r4t + x(i) + 2
  enddo
  write(6,*) r4t

  r4t=0
!$omp simd reduction(+:r4t)
  do i=1,N
     r4t = r4t + i + 2
  enddo
  write(6,*) r4t
  r4t=0
!$omp simd reduction(+:r4t)
  do i=1,N
     r4t = r4t + y(i) + 2
  enddo
  write(6,*) r4t

  r4a(2)=0
!$omp simd reduction(+:r4a)
  do i=1,N
     r4a(2) = r4a(2) + x(i) + 2
  enddo
  write(6,*) r4a(2)

  r4a(2)=0
!$omp simd reduction(+:r4a)
  do i=1,N
     r4a(2) = r4a(2) + i + 2
  enddo
  write(6,*) r4a(2)
  r4a(2)=0
!$omp simd reduction(+:r4a)
  do i=1,N
     r4a(2) = r4a(2) + y(i) + 2
  enddo
  write(6,*) r4a(2)

  r4t=0
!$omp simd reduction(max:r4t)
  do i=1,N
     r4t = max(r4t , x(i) , 2)
  enddo
  write(6,*) r4t

  r4t=0
!$omp simd reduction(max:r4t)
  do i=1,N
     r4t = max(r4t , i , 2)
  enddo
  write(6,*) r4t
  r4t=0
!$omp simd reduction(max:r4t)
  do i=1,N
     r4t = max(r4t , y(i) , 2)
  enddo
  write(6,*) r4t

  r4a(2)=0
!$omp simd reduction(max:r4a)
  do i=1,N
     r4a(2) = max(r4a(2) , x(i) , 2)
  enddo
  write(6,*) r4a(2)

  r4a(2)=0
!$omp simd reduction(max:r4a)
  do i=1,N
     r4a(2) = max(r4a(2) , i , 2)
  enddo
  write(6,*) r4a(2)
  r4a(2)=0
!$omp simd reduction(max:r4a)
  do i=1,N
     r4a(2) = max(r4a(2) , y(i) , 2)
  enddo
  write(6,*) r4a(2)


end program reduction_test
