
program reduction_test
  parameter(N=32)
  integer*1 i1(N),i1t,i1b(N)

  m=1
!$omp simd
  do i=1,N
     i1(i) = i-10
     i1b(i) = m
     if (i1(i) .eq. 0) then
        i1(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  i1t=0
!$omp simd reduction(+:i1t)
  do i=1,N
     i1t = i1t + i1(i)
  enddo
  write(6,*) i1t
  i1t=0
!$omp simd reduction(-:i1t)
  do i=1,N
     i1t = i1t - i1(i)
  enddo
  write(6,*) i1t
  i1t=1
!$omp simd reduction(*:i1t)
  do i=1,N
     i1t = i1t * i1b(i)
  enddo
  write(6,*) i1t
  i1t=0
!$omp simd reduction(max:i1t)
  do i=1,N
     i1t = max(i1t , i1(i))
  enddo
  write(6,*) i1t
  i1t=5
!$omp simd reduction(min:i1t)
  do i=1,N
     i1t = min(i1t , i1(i))
  enddo
  write(6,*) i1t
  i1t=1
!$omp simd reduction(iand:i1t)
  do i=1,N
     i1t = iand(i1t , i1b(i))
  enddo
  write(6,*) i1t
  i1t=0
!$omp simd reduction(ior:i1t)
  do i=1,N
     i1t = ior(i1t , i1(i))
  enddo
  write(6,*) i1t
  i1t=0
!$omp simd reduction(ieor:i1t)
  do i=1,N
     i1t = ieor(i1t , i1(i))
  enddo
  write(6,*) i1t


end program reduction_test
