
program reduction_test
  parameter(N=32)
  integer*1 i1(N),i1t,i1a(10)
  i1t=0
  i1a=0
!$omp simd
  do i=1,N
     i1(i) = i
  enddo

!$omp simd reduction(+:i1t)
  do i=1,N
     i1t = i1t + i1(i)
  enddo
  write(6,*) i1t

!$omp simd reduction(+:i1a)
  do i=1,N-1
     i1a(2) = i1a(2) + i1(i)
  enddo
  write(6,*) i1a(2)

!$omp simd reduction(+:i1t)
  do i=1,N-2
     if (i>10) then
        i1t = i1t + i1(i)
     endif
  enddo
  write(6,*) i1t
  i1a(2) = 0
!$omp simd reduction(+:i1a)
  do i=1,N-3
     if (i>10) then
        i1a(2) = i1a(2) + i1(i)
     endif
  enddo
  write(6,*) i1a(2)

!$omp simd reduction(+:i1t)
  do i=1,N-4
     if (i1(1) < 10) then
        i1t = i1t + i1(i)
     endif
  enddo
  write(6,*) i1t

  i1a(2) = 0
!$omp simd reduction(+:i1a)
  do i=1,N-5
     if (i1(1) < 10) then
        i1a(2) = i1a(2) + i1(i)
     endif
  enddo
  write(6,*) i1a(2)

end program reduction_test
