
program reduction_test
  parameter(N=32)
  real*2 r2(N),r2t,r2a(N)
  real*16 x(N)
  real*8  y(N),t

  m=1
!$omp simd
  do i=1,N
     r2(i) = i-10
     x(i) = i
     y(i) = i
     r2a(i) = m
     if (r2(i) .eq. 0) then
        r2(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  r2t=0
!$omp simd reduction(+:r2t)
  do i=1,N
     r2t = r2t + x(i) + 2
  enddo
  t = r2t
  write(6,*) t

  r2t=0
!$omp simd reduction(+:r2t)
  do i=1,N
     r2t = r2t + i + 2
  enddo
  t = r2t
  write(6,*) t
  r2t=0
!$omp simd reduction(+:r2t)
  do i=1,N
     r2t = r2t + y(i) + 2
  enddo
  t = r2t
  write(6,*) t

  r2a(2)=0
!$omp simd reduction(+:r2a)
  do i=1,N
     r2a(2) = r2a(2) + x(i) + 2
  enddo
  t = r2a(2)
  write(6,*) t

  r2a(2)=0
!$omp simd reduction(+:r2a)
  do i=1,N
     r2a(2) = r2a(2) + i + 2
  enddo
  t = r2a(2)
  write(6,*) t
  r2a(2)=0
!$omp simd reduction(+:r2a)
  do i=1,N
     r2a(2) = r2a(2) + y(i) + 2
  enddo
  t = r2a(2)
  write(6,*) t

  r2t=0
!$omp simd reduction(max:r2t)
  do i=1,N
     r2t = max(r2t , x(i) , 2)
  enddo
  t = r2t
  write(6,*) t

  r2t=0
!$omp simd reduction(max:r2t)
  do i=1,N
     r2t = max(r2t , i , 2)
  enddo
  t = r2t
  write(6,*) t
  r2t=0
!$omp simd reduction(max:r2t)
  do i=1,N
     r2t = max(r2t , y(i) , 2)
  enddo
  t = r2t
  write(6,*) t

  r2a(2)=0
!$omp simd reduction(max:r2a)
  do i=1,N
     r2a(2) = max(r2a(2) , x(i) , 2)
  enddo
  t = r2a(2)
  write(6,*) t

  r2a(2)=0
!$omp simd reduction(max:r2a)
  do i=1,N
     r2a(2) = max(r2a(2) , i , 2)
  enddo
  t = r2a(2)
  write(6,*) t
  r2a(2)=0
!$omp simd reduction(max:r2a)
  do i=1,N
     r2a(2) = max(r2a(2) , y(i) , 2)
  enddo
  t = r2a(2)
  write(6,*) t


end program reduction_test
