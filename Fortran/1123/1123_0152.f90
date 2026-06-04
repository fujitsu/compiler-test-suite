
program reduction_test
  parameter(N=32)
  real*8 r8(N),r8t,r8a(N)
  real*16 x(N)
  real*4  y(N)

  m=1
!$omp simd
  do i=1,N
     r8(i) = i-10
     x(i) = i
     y(i) = i
     r8a(i) = m
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
     r8t = r8t + x(i) + 2
  enddo
  write(6,*) r8t

  r8t=0
!$omp simd reduction(+:r8t)
  do i=1,N
     r8t = r8t + i + 2
  enddo
  write(6,*) r8t
  r8t=0
!$omp simd reduction(+:r8t)
  do i=1,N
     r8t = r8t + y(i) + 2
  enddo
  write(6,*) r8t

  r8a(2)=0
!$omp simd reduction(+:r8a)
  do i=1,N
     r8a(2) = r8a(2) + x(i) + 2
  enddo
  write(6,*) r8a(2)

  r8a(2)=0
!$omp simd reduction(+:r8a)
  do i=1,N
     r8a(2) = r8a(2) + i + 2
  enddo
  write(6,*) r8a(2)
  r8a(2)=0
!$omp simd reduction(+:r8a)
  do i=1,N
     r8a(2) = r8a(2) + y(i) + 2
  enddo
  write(6,*) r8a(2)

  r8t=0
!$omp simd reduction(max:r8t)
  do i=1,N
     r8t = max(r8t , x(i) , 2)
  enddo
  write(6,*) r8t

  r8t=0
!$omp simd reduction(max:r8t)
  do i=1,N
     r8t = max(r8t , i , 2)
  enddo
  write(6,*) r8t
  r8t=0
!$omp simd reduction(max:r8t)
  do i=1,N
     r8t = max(r8t , y(i) , 2)
  enddo
  write(6,*) r8t

  r8a(2)=0
!$omp simd reduction(max:r8a)
  do i=1,N
     r8a(2) = max(r8a(2) , x(i) , 2)
  enddo
  write(6,*) r8a(2)

  r8a(2)=0
!$omp simd reduction(max:r8a)
  do i=1,N
     r8a(2) = max(r8a(2) , i , 2)
  enddo
  write(6,*) r8a(2)
  r8a(2)=0
!$omp simd reduction(max:r8a)
  do i=1,N
     r8a(2) = max(r8a(2) , y(i) , 2)
  enddo
  write(6,*) r8a(2)


end program reduction_test
