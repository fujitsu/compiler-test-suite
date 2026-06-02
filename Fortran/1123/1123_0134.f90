
program reduction_test
  parameter(N=32)
  complex*32  c32(N),c32t,c32a(N),t
  complex*8  x(N)
  complex*4  y(N)
  complex*16 z(N)

  m=1
!$omp simd
  do i=1,N
     c32(i) = i-10
     x(i) = i
     y(i) = i
     z(i) = i
     c32a(i) = m
     if (c32(i) .eq. 0) then
        c32(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  c32t=0
!$omp simd reduction(+:c32t)
  do i=1,N
     c32t = c32t + x(i) + 2
  enddo
  t = c32t
  write(6,*) t

  c32t=0
!$omp simd reduction(+:c32t)
  do i=1,N
     c32t = c32t + i + 2
  enddo
  t = c32t
  write(6,*) t
  c32t=0
!$omp simd reduction(+:c32t)
  do i=1,N
     c32t = c32t + y(i) + 2
  enddo
  t = c32t
  write(6,*) t
  c32t=0
!$omp simd reduction(+:c32t)
  do i=1,N
     c32t = c32t + z(i) + 2
  enddo
  t = c32t
  write(6,*) t

  c32a(2)=0
!$omp simd reduction(+:c32a)
  do i=1,N
     c32a(2) = c32a(2) + x(i) + 2
  enddo
  t = c32a(2)
  write(6,*) t

  c32a(2)=0
!$omp simd reduction(+:c32a)
  do i=1,N
     c32a(2) = c32a(2) + i + 2
  enddo
  t = c32a(2)
  write(6,*) t
  c32a(2)=0
!$omp simd reduction(+:c32a)
  do i=1,N
     c32a(2) = c32a(2) + y(i) + 2
  enddo
  t = c32a(2)
  write(6,*) t
  c32a(2)=0
!$omp simd reduction(+:c32a)
  do i=1,N
     c32a(2) = c32a(2) + z(i) + 2
  enddo
  t = c32a(2)
  write(6,*) t

end program reduction_test
