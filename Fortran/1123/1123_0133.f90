
program reduction_test
  parameter(N=32)
  complex*16  c16(N),c16t,c16a(N),t
  complex*8  x(N)
  complex*4  y(N)
  complex*32 z(N)

  m=1
!$omp simd
  do i=1,N
     c16(i) = i-10
     x(i) = i
     y(i) = i
     z(i) = i
     c16a(i) = m
     if (c16(i) .eq. 0) then
        c16(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  c16t=0
!$omp simd reduction(+:c16t)
  do i=1,N
     c16t = c16t + x(i) + 2
  enddo
  t = c16t
  write(6,*) t

  c16t=0
!$omp simd reduction(+:c16t)
  do i=1,N
     c16t = c16t + i + 2
  enddo
  t = c16t
  write(6,*) t
  c16t=0
!$omp simd reduction(+:c16t)
  do i=1,N
     c16t = c16t + y(i) + 2
  enddo
  t = c16t
  write(6,*) t
  c16t=0
!$omp simd reduction(+:c16t)
  do i=1,N
     c16t = c16t + z(i) + 2
  enddo
  t = c16t
  write(6,*) t

  c16a(2)=0
!$omp simd reduction(+:c16a)
  do i=1,N
     c16a(2) = c16a(2) + x(i) + 2
  enddo
  t = c16a(2)
  write(6,*) t

  c16a(2)=0
!$omp simd reduction(+:c16a)
  do i=1,N
     c16a(2) = c16a(2) + i + 2
  enddo
  t = c16a(2)
  write(6,*) t
  c16a(2)=0
!$omp simd reduction(+:c16a)
  do i=1,N
     c16a(2) = c16a(2) + y(i) + 2
  enddo
  t = c16a(2)
  write(6,*) t
  c16a(2)=0
!$omp simd reduction(+:c16a)
  do i=1,N
     c16a(2) = c16a(2) + z(i) + 2
  enddo
  t = c16a(2)
  write(6,*) t

end program reduction_test
