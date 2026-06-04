program lastprivate_test
  parameter(N=32)
  integer*2 i2(N),i2t,i2a(10)

!$omp simd
  do i=1,N
     i2(i) = i
  enddo

!$omp simd lastprivate(i2t)
  do i=1,N
     i2t = i2(i)
  enddo
  write(6,*) i2t

!$omp simd lastprivate(i2a)
  do i=1,N-1
     i2a(2) = i2(i)
  enddo
  write(6,*) i2a(2)

!$omp simd lastprivate(i2t)
  do i=1,N-2
     if (i>10) then
        i2t = i2(i)
     endif
  enddo
  write(6,*) i2t

!$omp simd lastprivate(i2a)
  do i=1,N-3
     if (i>10) then
        i2a(2) = i2(i)
     endif
  enddo
  write(6,*) i2a(2)

!$omp simd lastprivate(i2t)
  do i=1,N-4
     if (i2(1) < 10) then
        i2t = i2(i)
     endif
  enddo
  write(6,*) i2t

!$omp simd lastprivate(i2a)
  do i=1,N-5
     if (i2(1) < 10) then
        i2a(2) = i2(i)
     endif
  enddo
  write(6,*) i2a(2)

end program lastprivate_test
