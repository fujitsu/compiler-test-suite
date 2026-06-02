program private_test
  parameter(N=32)
  real*2 r2(N),r2t,r2a(N)
  real*4 t

!$omp simd
  do i=1,N
     r2(i) = -i
     r2a(i) = 2
  enddo

!$omp simd private(r2t)
  do i=1,N
     r2t = r2(i)
     r2(i) = r2(i) + r2t
  enddo
  t = r2(2)
  write(6,*) t

!$omp simd private(r2a)
  do i=1,N
     r2a(2) = r2(i)
     r2a(3) = r2(i) + 1
     r2(i) = r2a(3) - r2a(2) + i
  enddo
  t = r2(2)
  write(6,*) t

!$omp simd private(r2t)
  do i=1,N
     r2t = r2(i)
     if (i .gt.1) then
        r2(i) = r2(i) + r2t
     endif
  enddo
  t = r2(2)
  write(6,*) t

!$omp simd private(r2a)
  do i=1,N
     if (r2(i).gt.10) then
        r2a(2) = 2
     else
        r2a(2) = 6
     endif
     if (r2(i)+1.lt.10) then
        r2a(3) = r2(i) + 1
     else
        r2a(3) = r2(i) - 1
     endif
     r2(i) = r2a(2) + r2a(3)
  enddo
  t = r2(2)
  write(6,*) t

end program private_test
