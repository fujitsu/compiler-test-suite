
program reduction_test
  parameter(N=32)
  integer*2 i2(N),i2t,i2a(N)
  integer*1 x(N)
  integer*4 y(N)
  integer*8 z(N)

  m=1
!$omp simd
  do i=1,N
     i2(i) = i-10
     x(i) = i
     y(i) = i
     z(i) = i
     i2a(i) = m
     if (i2(i) .eq. 0) then
        i2(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  i2t=0
!$omp simd reduction(+:i2t)
  do i=1,N
     i2t = i2t + x(i) + 2
  enddo
  write(6,*) i2t

  i2t=0
!$omp simd reduction(+:i2t)
  do i=1,N
     i2t = i2t + i + 2
  enddo
  write(6,*) i2t
  i2t=0
!$omp simd reduction(+:i2t)
  do i=1,N
     i2t = i2t + y(i) + 2
  enddo
  write(6,*) i2t
  i2t=0
!$omp simd reduction(+:i2t)
  do i=1,N
     i2t = i2t + z(i) + 2
  enddo
  write(6,*) i2t

  i2a(2)=0
!$omp simd reduction(+:i2a)
  do i=1,N
     i2a(2) = i2a(2) + x(i) + 2
  enddo
  write(6,*) i2a(2)

  i2a(2)=0
!$omp simd reduction(+:i2a)
  do i=1,N
     i2a(2) = i2a(2) + i + 2
  enddo
  write(6,*) i2a(2)
  i2a(2)=0
!$omp simd reduction(+:i2a)
  do i=1,N
     i2a(2) = i2a(2) + y(i) + 2
  enddo
  write(6,*) i2a(2)
  i2a(2)=0
!$omp simd reduction(+:i2a)
  do i=1,N
     i2a(2) = i2a(2) + z(i) + 2
  enddo
  write(6,*) i2a(2)



end program reduction_test
