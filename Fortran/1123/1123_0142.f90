
program reduction_test
  parameter(N=32)
  integer*4 i4(N),i4t,i4a(N)
  integer*1 x(N)
  integer*2 y(N)
  integer*8 z(N)

  m=1
!$omp simd
  do i=1,N
     i4(i) = i-10
     x(i) = i
     y(i) = i
     z(i) = i
     i4a(i) = m
     if (i4(i) .eq. 0) then
        i4(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  i4t=0
!$omp simd reduction(max:i4t)
  do i=1,N
     i4t = max(i4t , x(i) , 2)
  enddo
  write(6,*) i4t

  i4t=0
!$omp simd reduction(max:i4t)
  do i=1,N
     i4t = max(i4t , i , 2)
  enddo
  write(6,*) i4t
  i4t=0
!$omp simd reduction(max:i4t)
  do i=1,N
     i4t = max(i4t , y(i) , 2)
  enddo
  write(6,*) i4t
  i4t=0
!$omp simd reduction(max:i4t)
  do i=1,N
     i4t = max(i4t , z(i) , 2)
  enddo
  write(6,*) i4t

  i4a(2)=0
!$omp simd reduction(max:i4a)
  do i=1,N
     i4a(2) = max(i4a(2) , x(i) , 2)
  enddo
  write(6,*) i4a(2)

  i4a(2)=0
!$omp simd reduction(max:i4a)
  do i=1,N
     i4a(2) = max(i4a(2) , i , 2)
  enddo
  write(6,*) i4a(2)
  i4a(2)=0
!$omp simd reduction(max:i4a)
  do i=1,N
     i4a(2) = max(i4a(2) , y(i) , 2)
  enddo
  write(6,*) i4a(2)
  i4a(2)=0
!$omp simd reduction(max:i4a)
  do i=1,N
     i4a(2) = max(i4a(2) , z(i) , 2)
  enddo
  write(6,*) i4a(2)

  i4t=0
!$omp simd reduction(iand:i4t)
  do i=1,N
     i4t = iand(i4t , x(i))
  enddo
  write(6,*) i4t

  i4t=0
!$omp simd reduction(iand:i4t)
  do i=1,N
     i4t = iand(i4t , i)
  enddo
  write(6,*) i4t
  i4t=0
!$omp simd reduction(iand:i4t)
  do i=1,N
     i4t = iand(i4t , y(i))
  enddo
  write(6,*) i4t
  i4t=0
!$omp simd reduction(iand:i4t)
  do i=1,N
     i4t = iand(i4t , z(i))
  enddo
  write(6,*) i4t

  i4a(2)=0
!$omp simd reduction(iand:i4a)
  do i=1,N
     i4a(2) = iand(i4a(2) , x(i))
  enddo
  write(6,*) i4a(2)

  i4a(2)=0
!$omp simd reduction(iand:i4a)
  do i=1,N
     i4a(2) = iand(i4a(2) , i)
  enddo
  write(6,*) i4a(2)
  i4a(2)=0
!$omp simd reduction(iand:i4a)
  do i=1,N
     i4a(2) = iand(i4a(2) , y(i))
  enddo
  write(6,*) i4a(2)
  i4a(2)=0
!$omp simd reduction(iand:i4a)
  do i=1,N
     i4a(2) = iand(i4a(2) , z(i))
  enddo
  write(6,*) i4a(2)


end program reduction_test
