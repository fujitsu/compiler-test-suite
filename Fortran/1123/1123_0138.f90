
program reduction_test
  parameter(N=32)
  integer*1 i1(N),i1t,i1a(N)
  integer*4 x(N)
  integer*2 y(N)
  integer*8 z(N)

  m=1
!$omp simd
  do i=1,N
     i1(i) = i-10
     x(i) = i
     y(i) = i
     z(i) = i
     i1a(i) = m
     if (i1(i) .eq. 0) then
        i1(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  i1t=0
!$omp simd reduction(max:i1t)
  do i=1,N
     i1t = max(i1t , x(i) , 2)
  enddo
  write(6,*) i1t

  i1t=0
!$omp simd reduction(max:i1t)
  do i=1,N
     i1t = max(i1t , i , 2)
  enddo
  write(6,*) i1t
  i1t=0
!$omp simd reduction(max:i1t)
  do i=1,N
     i1t = max(i1t , y(i) , 2)
  enddo
  write(6,*) i1t
  i1t=0
!$omp simd reduction(max:i1t)
  do i=1,N
     i1t = max(i1t , z(i) , 2)
  enddo
  write(6,*) i1t

  i1a(2)=0
!$omp simd reduction(max:i1a)
  do i=1,N
     i1a(2) = max(i1a(2) , x(i) , 2)
  enddo
  write(6,*) i1a(2)

  i1a(2)=0
!$omp simd reduction(max:i1a)
  do i=1,N
     i1a(2) = max(i1a(2) , i , 2)
  enddo
  write(6,*) i1a(2)
  i1a(2)=0
!$omp simd reduction(max:i1a)
  do i=1,N
     i1a(2) = max(i1a(2) , y(i) , 2)
  enddo
  write(6,*) i1a(2)
  i1a(2)=0
!$omp simd reduction(max:i1a)
  do i=1,N
     i1a(2) = max(i1a(2) , z(i) , 2)
  enddo
  write(6,*) i1a(2)

  i1t=0
!$omp simd reduction(iand:i1t)
  do i=1,N
     i1t = iand(i1t , x(i))
  enddo
  write(6,*) i1t

  i1t=0
!$omp simd reduction(iand:i1t)
  do i=1,N
     i1t = iand(i1t , i)
  enddo
  write(6,*) i1t
  i1t=0
!$omp simd reduction(iand:i1t)
  do i=1,N
     i1t = iand(i1t , y(i))
  enddo
  write(6,*) i1t
  i1t=0
!$omp simd reduction(iand:i1t)
  do i=1,N
     i1t = iand(i1t , z(i))
  enddo
  write(6,*) i1t

  i1a(2)=0
!$omp simd reduction(iand:i1a)
  do i=1,N
     i1a(2) = iand(i1a(2) , x(i))
  enddo
  write(6,*) i1a(2)

  i1a(2)=0
!$omp simd reduction(iand:i1a)
  do i=1,N
     i1a(2) = iand(i1a(2) , i)
  enddo
  write(6,*) i1a(2)
  i1a(2)=0
!$omp simd reduction(iand:i1a)
  do i=1,N
     i1a(2) = iand(i1a(2) , y(i))
  enddo
  write(6,*) i1a(2)
  i1a(2)=0
!$omp simd reduction(iand:i1a)
  do i=1,N
     i1a(2) = iand(i1a(2) , z(i))
  enddo
  write(6,*) i1a(2)


end program reduction_test
