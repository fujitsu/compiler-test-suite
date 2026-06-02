
program reduction_test
  parameter(N=32)
  complex*8  c8(N),c8t,c8a(N),t
  complex*16 x(N)
  complex*4  y(N)
  complex*32 z(N)

  m=1
!$omp simd
  do i=1,N
     c8(i) = i-10
     x(i) = i
     y(i) = i
     z(i) = i
     c8a(i) = m
     if (c8(i) .eq. 0) then
        c8(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  c8t=0
!$omp simd reduction(+:c8t)
  do i=1,N
     c8t = c8t + x(i) + 2
  enddo
  t = c8t
  write(6,*) t

  c8t=0
!$omp simd reduction(+:c8t)
  do i=1,N
     c8t = c8t + i + 2
  enddo
  t = c8t
  write(6,*) t
  c8t=0
!$omp simd reduction(+:c8t)
  do i=1,N
     c8t = c8t + y(i) + 2
  enddo
  t = c8t
  write(6,*) t
  c8t=0
!$omp simd reduction(+:c8t)
  do i=1,N
     c8t = c8t + z(i) + 2
  enddo
  t = c8t
  write(6,*) t

  c8a(2)=0
!$omp simd reduction(+:c8a)
  do i=1,N
     c8a(2) = c8a(2) + x(i) + 2
  enddo
  t = c8a(2)
  write(6,*) t

  c8a(2)=0
!$omp simd reduction(+:c8a)
  do i=1,N
     c8a(2) = c8a(2) + i + 2
  enddo
  t = c8a(2)
  write(6,*) t
  c8a(2)=0
!$omp simd reduction(+:c8a)
  do i=1,N
     c8a(2) = c8a(2) + y(i) + 2
  enddo
  t = c8a(2)
  write(6,*) t
  c8a(2)=0
!$omp simd reduction(+:c8a)
  do i=1,N
     c8a(2) = c8a(2) + z(i) + 2
  enddo
  t = c8a(2)
  write(6,*) t

end program reduction_test
