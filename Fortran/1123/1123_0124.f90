
program reduction_test
  parameter(N=32)
  integer*8 i8(N),i8t,i8a(10)
  i8t=0
  i8a=0
!$omp simd
  do i=1,N
     i8(i) = i
  enddo

!$omp simd reduction(+:i8t)
  do i=1,N
     i8t = i8t + i8(i)
  enddo
  write(6,*) i8t

  MM=N-1
!$omp simd reduction(+:i8a)
  do i=1,MM
     i8a(2) = i8a(2) + i8(i)
  enddo
  write(6,*) i8a(2)

  MM=N-2
!$omp simd reduction(+:i8t)
  do i=1,MM
     if (i>10) then
        i8t = i8t + i8(i)
     endif
  enddo
  write(6,*) i8t

  MM=N-3
!$omp simd reduction(+:i8a)
  do i=1,MM
     if (i>10) then
        i8a(2) = i8a(2) + i8(i)
     endif
  enddo
  write(6,*) i8a(2)

  MM=N-4
!$omp simd reduction(+:i8t)
  do i=1,MM
     if (i8(1) < 10) then
        i8t = i8t + i8(i)
     endif
  enddo
  write(6,*) i8t

  MM=N-5
!$omp simd reduction(+:i8a)
  do i=1,MM
     if (i8(1) < 10) then
        i8a(2) = i8a(2) + i8(i)
     endif
  enddo
  write(6,*) i8a(2)

end program reduction_test
