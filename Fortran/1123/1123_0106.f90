
program reduction_test
  parameter(N=32)
  integer*2 i2(N),i2t,i2b(N)

  m=1
!$omp simd
  do i=1,N
     i2(i) = i-10
     i2b(i) = m
     if (i2(i) .eq. 0) then
        i2(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  i2t=0
!$omp simd reduction(+:i2t)
  do i=1,N
     i2t = i2t + i2(i)
  enddo
  write(6,*) i2t
  i2t=0
  MM=N-1
!$omp simd reduction(-:i2t)
  do i=1,MM
     i2t = i2t - i2(i)
  enddo
  write(6,*) i2t
  i2t=1
  MM=N-2
!$omp simd reduction(*:i2t)
  do i=1,MM
     i2t = i2t * i2b(i)
  enddo
  write(6,*) i2t
  MM=N-3
  i2t=0
!$omp simd reduction(max:i2t)
  do i=1,MM
     i2t = max(i2t , i2(i))
  enddo
  write(6,*) i2t
  MM=N-4
  i2t=5
!$omp simd reduction(min:i2t)
  do i=1,MM
     i2t = min(i2t , i2(i))
  enddo
  write(6,*) i2t
  MM=N-1
  i2t=1
!$omp simd reduction(iand:i2t)
  do i=1,MM
     i2t = iand(i2t , i2b(i))
  enddo
  write(6,*) i2t
  MM=N-2
  i2t=0
!$omp simd reduction(ior:i2t)
  do i=1,MM
     i2t = ior(i2t , i2(i))
  enddo
  write(6,*) i2t
  MM=N-3
  i2t=0
!$omp simd reduction(ieor:i2t)
  do i=1,MM
     i2t = ieor(i2t , i2(i))
  enddo
  write(6,*) i2t


end program reduction_test
