program lastprivate_test
  parameter(N=32)
  integer*4 i4(N)
  logical*2 l2(N),l2t,l2a(10)

!$omp simd
  do i=1,N
     i4(i) = i
     l2(i) = .true.
  enddo

!$omp simd lastprivate(l2t)
  do i=1,N
     l2t = l2(i)
  enddo
  write(6,*) l2t

!$omp simd lastprivate(l2a)
  do i=1,N-1
     l2a(2) = l2(i)
  enddo
  write(6,*) l2a(2)

!$omp simd lastprivate(l2t)
  do i=1,N-2
     if (i>10) then
        l2t = l2(i)
     endif
  enddo
  write(6,*) l2t

!$omp simd lastprivate(l2a)
  do i=1,N-3
     if (i>10) then
        l2a(2) = l2(i)
     endif
  enddo
  write(6,*) l2a(2)

!$omp simd lastprivate(l2t)
  do i=1,N-4
     if (i4(7) .lt. 10) then
        l2t = l2(i)
     endif
  enddo
  write(6,*) l2t

!$omp simd lastprivate(l2a)
  do i=1,N-5
     if(i4(7) .lt. 10) then
        L2A(1)=l2(i)
     endif
  enddo
  write(6,*) l2a(1)


end program lastprivate_test
