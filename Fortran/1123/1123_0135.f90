
program reduction_test
  parameter(N=32)
  complex*4  c4(N),c4t,c4a(N)
  complex*16 x(N)
  complex*8  y(N),t
  complex*32 z(N)

  m=1
!$omp simd
  do i=1,N
     c4(i) = i-10
     x(i) = i
     y(i) = i
     z(i) = i
     c4a(i) = m
     if (c4(i) .eq. 0) then
        c4(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  c4t=0
!$omp simd reduction(+:c4t)
  do i=1,N
     c4t = c4t + x(i) + 2
  enddo
  t = c4t
  write(6,*) t

  c4t=0
!$omp simd reduction(+:c4t)
  do i=1,N
     c4t = c4t + i + 2
  enddo
  t = c4t
  write(6,*) t
  c4t=0
!$omp simd reduction(+:c4t)
  do i=1,N
     c4t = c4t + y(i) + 2
  enddo
  t = c4t
  write(6,*) t
  c4t=0
!$omp simd reduction(+:c4t)
  do i=1,N
     c4t = c4t + z(i) + 2
  enddo
  t = c4t
  write(6,*) t

  c4a(2)=0
!$omp simd reduction(+:c4a)
  do i=1,N
     c4a(2) = c4a(2) + x(i) + 2
  enddo
  t = c4a(2)
  write(6,*) t

  c4a(2)=0
!$omp simd reduction(+:c4a)
  do i=1,N
     c4a(2) = c4a(2) + i + 2
  enddo
  t = c4a(2)
  write(6,*) t
  c4a(2)=0
!$omp simd reduction(+:c4a)
  do i=1,N
     c4a(2) = c4a(2) + y(i) + 2
  enddo
  t = c4a(2)
  write(6,*) t
  c4a(2)=0
!$omp simd reduction(+:c4a)
  do i=1,N
     c4a(2) = c4a(2) + z(i) + 2
  enddo
  t = c4a(2)
  write(6,*) t

end program reduction_test
