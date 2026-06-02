program lastprivate_test
  parameter(N=32)
  complex*4 c4(N),c4t,c4a(10)
  complex*8 c8t,c8a(10)

!$omp simd
  do i=1,N
     c4(i) = cmplx(4,i)
  enddo

!$omp simd lastprivate(c4t)
  do i=1,N
     c4t = c4(i)
  enddo
  c8t = c4t
  write(6,*) c8t

!$omp simd lastprivate(c4a)
  do i=1,N-1
     c4a(2) = c4(i)
  enddo
  c8a(2) = c4a(2)
  write(6,*) c8a(2)

!$omp simd lastprivate(c4t)
  do i=1,N-2
     if (i>10) then
        c4t = c4(i)
     endif
  enddo
  c8t = c4t
  write(6,*) c8t

!$omp simd lastprivate(c4a)
  do i=1,N-3
     if (i>10) then
        c4a(2) = c4(i)
     endif
  enddo
  c8a(2) = c4a(2)
  write(6,*) c8a(2)

!$omp simd lastprivate(c4t)
  do i=1,N-4
     if (c4(1) .ne. 10) then
        c4t = c4(i)
     endif
  enddo
  c8t = c4t
  write(6,*) c8t

!$omp simd lastprivate(c4a)
  do i=1,N-5
     if (c4(1) .ne. 10) then
        c4a(2) = c4(i)
     endif
  enddo
  c8a(2) = c4a(2)
  write(6,*) c8a(2)

end program lastprivate_test
