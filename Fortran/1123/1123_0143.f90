
program reduction_test
  parameter(N=32)
  integer*8 i8(N),i8t,i8a(N)
  integer*1 x(N)
  integer*2 y(N)
  integer*4 z(N)

  m=1
!$omp simd
  do i=1,N
     i8(i) = i-10
     x(i) = i
     y(i) = i
     z(i) = i
     i8a(i) = m
     if (i8(i) .eq. 0) then
        i8(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  i8t=0
!$omp simd reduction(+:i8t)
  do i=1,N
     i8t = i8t + x(i) + 2
  enddo
  write(6,*) i8t

  i8t=0
!$omp simd reduction(+:i8t)
  do i=1,N
     i8t = i8t + i + 2
  enddo
  write(6,*) i8t
  i8t=0
!$omp simd reduction(+:i8t)
  do i=1,N
     i8t = i8t + y(i) + 2
  enddo
  write(6,*) i8t
  i8t=0
!$omp simd reduction(+:i8t)
  do i=1,N
     i8t = i8t + z(i) + 2
  enddo
  write(6,*) i8t

  i8a(2)=0
!$omp simd reduction(+:i8a)
  do i=1,N
     i8a(2) = i8a(2) + x(i) + 2
  enddo
  write(6,*) i8a(2)

  i8a(2)=0
!$omp simd reduction(+:i8a)
  do i=1,N
     i8a(2) = i8a(2) + i + 2
  enddo
  write(6,*) i8a(2)
  i8a(2)=0
!$omp simd reduction(+:i8a)
  do i=1,N
     i8a(2) = i8a(2) + y(i) + 2
  enddo
  write(6,*) i8a(2)
  i8a(2)=0
!$omp simd reduction(+:i8a)
  do i=1,N
     i8a(2) = i8a(2) + z(i) + 2
  enddo
  write(6,*) i8a(2)



end program reduction_test
