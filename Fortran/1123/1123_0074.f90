program lastprivate_test
  parameter(N=32)
  integer*4 i4(N),i4t,i4a(10)

!$omp simd
  do i=1,N
     i4(i) = -i
  enddo

!$omp simd lastprivate(i4t)
  do i=1,N
     i4t = i4(i)
  enddo
  write(6,*) i4t

!$omp simd lastprivate(i4a)
  do i=1,N-1
     i4a(2) = i4(i)
  enddo
  write(6,*) i4a(2)

!$omp simd lastprivate(i4t)
  do i=1,N-2
     if (i>10) then
        i4t = i4(i)
     endif
  enddo
  write(6,*) i4t

!$omp simd lastprivate(i4a)
  do i=1,N-3
     if (i>10) then
        i4a(2) = i4(i)
     endif
  enddo
  write(6,*) i4a(2)

!$omp simd lastprivate(i4t)
  do i=1,N-4
     if (i4(1) < 10) then
        i4t = i4(i)
     endif
  enddo
  write(6,*) i4t

!$omp simd lastprivate(i4a)
  do i=1,N-5
     if (i4(1) < 10) then
        i4a(2) = i4(i)
     endif
  enddo
  write(6,*) i4a(2)

end program lastprivate_test
