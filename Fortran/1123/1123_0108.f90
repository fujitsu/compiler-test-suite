
program reduction_test
  parameter(N=32)
  integer*8 i8(N),i8t,i8b(N)

  m=1
!$omp simd
  do i=1,N
     i8(i) = i-10
     i8b(i) = m
     if (i8(i) .eq. 0) then
        i8(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  i8t=0
!$omp simd reduction(+:i8t)
  do i=1,N
     i8t = i8t + i8(i)
  enddo
  write(6,*) i8t
  i8t=0
  MM=N-1
!$omp simd reduction(-:i8t)
  do i=1,MM
     i8t = i8t - i8(i)
  enddo
  write(6,*) i8t
  i8t=1
  MM=N-2
!$omp simd reduction(*:i8t)
  do i=1,MM
     i8t = i8t * i8b(i)
  enddo
  write(6,*) i8t
  MM=N-3
  i8t=0
!$omp simd reduction(max:i8t)
  do i=1,MM
     i8t = max(i8t , i8(i))
  enddo
  write(6,*) i8t
  MM=N-4
  i8t=5
!$omp simd reduction(min:i8t)
  do i=1,MM
     i8t = min(i8t , i8(i))
  enddo
  write(6,*) i8t
  MM=N-1
  i8t=1
!$omp simd reduction(iand:i8t)
  do i=1,MM
     i8t = iand(i8t , i8b(i))
  enddo
  write(6,*) i8t
  MM=N-2
  i8t=0
!$omp simd reduction(ior:i8t)
  do i=1,MM
     i8t = ior(i8t , i8(i))
  enddo
  write(6,*) i8t
  MM=N-3
  i8t=0
!$omp simd reduction(ieor:i8t)
  do i=1,MM
     i8t = ieor(i8t , i8(i))
  enddo
  write(6,*) i8t


end program reduction_test
