program lastprivate_test
  parameter(N=32)
  integer*4 i4(N)
  logical*4 l4(N),l4t,l4a(10)

!$omp simd
  do i=1,N
     i4(i) = i
     l4(i) = .true.
  enddo

!$omp simd lastprivate(l4t)
  do i=1,N
     l4t = l4(i)
  enddo
  write(6,*) l4t

!$omp simd lastprivate(l4a)
  do i=1,N-1
     l4a(2) = l4(i)
  enddo
  write(6,*) l4a(2)

!$omp simd lastprivate(l4t)
  do i=1,N-2
     if (i>10) then
        l4t = l4(i)
     endif
  enddo
  write(6,*) l4t

!$omp simd lastprivate(l4a)
  do i=1,N-3
     if (i>10) then
        l4a(2) = l4(i)
     endif
  enddo
  write(6,*) l4a(2)

!$omp simd lastprivate(l4t)
  do i=1,N-4
     if (i4(7) .lt. 10) then
        l4t = l4(i)
     endif
  enddo
  write(6,*) l4t

!$omp simd lastprivate(l4a)
  do i=1,N-5
     if(i4(7) .lt. 10) then
        L4A(1)=l4(i)
     endif
  enddo
  write(6,*) l4a(1)


end program lastprivate_test
