
program reduction_test
  parameter(N=32)
  integer*4 i4(N),i4t,i4b(N)

  m=1
!$omp simd
  do i=1,N
     i4(i) = i-10
     i4b(i) = m
     if (i4(i) .eq. 0) then
        i4(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  i4t=0
!$omp simd reduction(+:i4t)
  do i=1,N
     i4t = i4t + i4(i)
  enddo
  write(6,*) i4t
  i4t=0
!$omp simd reduction(-:i4t)
  do i=1,N
     i4t = i4t - i4(i)
  enddo
  write(6,*) i4t
  i4t=1
!$omp simd reduction(*:i4t)
  do i=1,N
     i4t = i4t * i4b(i)
  enddo
  write(6,*) i4t
  i4t=0
!$omp simd reduction(max:i4t)
  do i=1,N
     i4t = max(i4t , i4(i))
  enddo
  write(6,*) i4t
  i4t=5
!$omp simd reduction(min:i4t)
  do i=1,N
     i4t = min(i4t , i4(i))
  enddo
  write(6,*) i4t
  i4t=1
!$omp simd reduction(iand:i4t)
  do i=1,N
     i4t = iand(i4t , i4b(i))
  enddo
  write(6,*) i4t
  i4t=0
!$omp simd reduction(ior:i4t)
  do i=1,N
     i4t = ior(i4t , i4(i))
  enddo
  write(6,*) i4t
  i4t=0
!$omp simd reduction(ieor:i4t)
  do i=1,N
     i4t = ieor(i4t , i4(i))
  enddo
  write(6,*) i4t


end program reduction_test
