
program reduction_test
  parameter(N=32)
  real*16 r16(N),r16t,r16a(N)
  real*8 x(N)
  real*4 y(N)

  m=1
!$omp simd
  do i=1,N
     r16(i) = i-10
     x(i) = i
     y(i) = i
     r16a(i) = m
     if (r16(i) .eq. 0) then
        r16(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  r16t=0
!$omp simd reduction(+:r16t)
  do i=1,N
     r16t = r16t + x(i) + 2
  enddo
  write(6,*) r16t

  r16t=0
!$omp simd reduction(+:r16t)
  do i=1,N
     r16t = r16t + i + 2
  enddo
  write(6,*) r16t

  r16t=0
!$omp simd reduction(+:r16t)
  do i=1,N
     r16t = r16t + y(i) + 2
  enddo
  write(6,*) r16t

  r16a(2)=0
!$omp simd reduction(+:r16a)
  do i=1,N
     r16a(2) = r16a(2) + x(i) + 2
  enddo
  write(6,*) r16a(2)

  r16a(2)=0
!$omp simd reduction(+:r16a)
  do i=1,N
     r16a(2) = r16a(2) + i + 2
  enddo
  write(6,*) r16a(2)
  r16a(2)=0
!$omp simd reduction(+:r16a)
  do i=1,N
     r16a(2) = r16a(2) + y(i) + 2
  enddo
  write(6,*) r16a(2)

  r16t=0
!$omp simd reduction(max:r16t)
  do i=1,N
     r16t = max(r16t , x(i) , 2)
  enddo
  write(6,*) r16t

  r16t=0
!$omp simd reduction(max:r16t)
  do i=1,N
     r16t = max(r16t , i , 2)
  enddo
  write(6,*) r16t
  r16t=0
!$omp simd reduction(max:r16t)
  do i=1,N
     r16t = max(r16t , y(i) , 2)
  enddo
  write(6,*) r16t

  r16a(2)=0
!$omp simd reduction(max:r16a)
  do i=1,N
     r16a(2) = max(r16a(2) , x(i) , 2)
  enddo
  write(6,*) r16a(2)

  r16a(2)=0
!$omp simd reduction(max:r16a)
  do i=1,N
     r16a(2) = max(r16a(2) , i , 2)
  enddo
  write(6,*) r16a(2)
  r16a(2)=0
!$omp simd reduction(max:r16a)
  do i=1,N
     r16a(2) = max(r16a(2) , y(i) , 2)
  enddo
  write(6,*) r16a(2)


end program reduction_test
