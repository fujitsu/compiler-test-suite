program lastprivate_test
  parameter(N=32)
  complex*32 c32(N),c32t,c32a(10)

!$omp simd
  do i=1,N
     c32(i) = cmplx(-i,-i)
  enddo

!$omp simd lastprivate(c32t)
  do i=1,N
     c32t = c32(i)
  enddo
  write(6,*) c32t

!$omp simd lastprivate(c32a)
  do i=1,N-1
     c32a(2) = c32(i)
  enddo
  write(6,*) c32a(2)

!$omp simd lastprivate(c32t)
  do i=1,N-2
     if (i>10) then
        c32t = c32(i)
     endif
  enddo
  write(6,*) c32t

!$omp simd lastprivate(c32a)
  do i=1,N-3
     if (i>10) then
        c32a(2) = c32(i)
     endif
  enddo
  write(6,*) c32a(2)

!$omp simd lastprivate(c32t)
  do i=1,N-4
     if (c32(1) .ne. 10) then
        c32t = c32(i)
     endif
  enddo
  write(6,*) c32t

!$omp simd lastprivate(c32a)
  do i=1,N-5
     if (c32(1) .ne. 10) then
        c32a(2) = c32(i)
     endif
  enddo
  write(6,*) c32a(2)

end program lastprivate_test
