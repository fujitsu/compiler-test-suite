
program reduction_test
  parameter(N=32)
  integer*2 i2(N),i2t,i2a(10)
  i2t=0
  i2a=0
!$omp simd
  do i=1,N
     i2(i) = i
  enddo

!$omp simd reduction(+:i2t)
  do i=1,N
     i2t = i2t + i2(i)
  enddo
  write(6,*) i2t

  MM=N-1
!$omp simd reduction(+:i2a)
  do i=1,MM
     i2a(2) = i2a(2) + i2(i)
  enddo
  write(6,*) i2a(2)

  MM=N-2
!$omp simd reduction(+:i2t)
  do i=1,MM
     if (i>10) then
        i2t = i2t + i2(i)
     endif
  enddo
  write(6,*) i2t

  MM=N-3
!$omp simd reduction(+:i2a)
  do i=1,MM
     if (i>10) then
        i2a(2) = i2a(2) + i2(i)
     endif
  enddo
  write(6,*) i2a(2)

  MM=N-4
!$omp simd reduction(+:i2t)
  do i=1,MM
     if (i2(1) < 10) then
        i2t = i2t + i2(i)
     endif
  enddo
  write(6,*) i2t

  MM=N-5
!$omp simd reduction(+:i2a)
  do i=1,MM
     if (i2(1) < 10) then
        i2a(2) = i2a(2) + i2(i)
     endif
  enddo
  write(6,*) i2a(2)

end program reduction_test
