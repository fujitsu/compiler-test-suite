program lastprivate_test
  parameter(N=32)
  complex*16 c16(N),c16t,c16a(10)

!$omp simd
  do i=1,N
     c16(i) = cmplx(i,-i)
  enddo

!$omp simd lastprivate(c16t)
  do i=1,N
     c16t = c16(i)
  enddo
  write(6,*) c16t

!$omp simd lastprivate(c16a)
  do i=1,N-1
     c16a(2) = c16(i)
  enddo
  write(6,*) c16a(2)

!$omp simd lastprivate(c16t)
  do i=1,N-2
     if (i>10) then
        c16t = c16(i)
     endif
  enddo
  write(6,*) c16t

!$omp simd lastprivate(c16a)
  do i=1,N-3
     if (i>10) then
        c16a(2) = c16(i)
     endif
  enddo
  write(6,*) c16a(2)

!$omp simd lastprivate(c16t)
  do i=1,N-4
     if (c16(1) .ne. 10) then
        c16t = c16(i)
     endif
  enddo
  write(6,*) c16t

!$omp simd lastprivate(c16a)
  do i=1,N-5
     if (c16(1) .ne. 10) then
        c16a(2) = c16(i)
     endif
  enddo
  write(6,*) c16a(2)

end program lastprivate_test
