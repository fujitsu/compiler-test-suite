program lastprivate_test
  parameter(N=32)
  real*2 r2(N),r2t,r2a(10)
  real*4 r4t,r4a(10)

!$omp simd
  do i=1,N
     r2(i) = i
  enddo

!$omp simd lastprivate(r2t)
  do i=1,N
     r2t = r2(i)
  enddo
  r4t = r2t
  write(6,*) r4t

!$omp simd lastprivate(r2a)
  do i=1,N-1
     r2a(2) = r2(i)
  enddo
  r4a(2) = r2a(2)
  write(6,*) r4a(2)

!$omp simd lastprivate(r2t)
  do i=1,N-2
     if (i>10) then
        r2t = r2(i)
     endif
  enddo
  r4t = r2t
  write(6,*) r4t

!$omp simd lastprivate(r2a)
  do i=1,N-3
     if (i>10) then
        r2a(2) = r2(i)
     endif
  enddo
  r4a(2) = r2a(2)
  write(6,*) r4a(2)

!$omp simd lastprivate(r2t)
  do i=1,N-4
     if (r2(1) < 10) then
        r2t = r2(i)
     endif
  enddo
  r4t = r2t
  write(6,*) r4t

!$omp simd lastprivate(r2a)
  do i=1,N-5
     if (r2(1) < 10) then
        r2a(2) = r2(i)
     endif
  enddo
  r4a(2) = r2a(2)
  write(6,*) r4a(2)

end program lastprivate_test
