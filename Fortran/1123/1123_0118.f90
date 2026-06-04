
program reduction_test
  parameter(N=32)
  complex*32 c32(N),c32t,c32a(10)
  real*4 r4(N)
  c32t=0
  c32a=0
!$omp simd
  do i=1,N
     c32(i) = i
     r4(i) = i
  enddo

!$omp simd reduction(+:c32t)
  do i=1,N
     c32t = c32t + c32(i)
  enddo
  write(6,*) c32t

!$omp simd reduction(+:c32a)
  do i=1,N-1
     c32a(2) = c32a(2) + c32(i)
  enddo
  write(6,*) c32a(2)

!$omp simd reduction(+:c32t)
  do i=1,N-2
     if (i>10) then
        c32t = c32t + c32(i)
     endif
  enddo
  write(6,*) c32t

!$omp simd reduction(+:c32a)
  do i=1,N-3
     if (i>10) then
        c32a(2) = c32a(2) + c32(i)
     endif
  enddo
  write(6,*) c32a(2)

!$omp simd reduction(+:c32t)
  do i=1,N-4
     if (r4(1) < 10) then
        c32t = c32t + c32(i)
     endif
  enddo
  write(6,*) c32t

!$omp simd reduction(+:c32a)
  do i=1,N-5
     if (r4(1) < 10) then
        c32a(2) = c32a(2) + c32(i)
     endif
  enddo
  write(6,*) c32a(2)

end program reduction_test
