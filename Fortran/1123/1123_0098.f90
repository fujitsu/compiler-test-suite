program private_test
  parameter(N=32)
  real*4 r4(N),r4t,r4a(N)

!$omp simd
  do i=1,N
     r4(i) = -i
     r4a(i) = 2
  enddo

!$omp simd private(r4t)
  do i=1,N
     r4t = r4(i)
     r4(i) = r4(i) + r4t
  enddo
  write(6,*) r4(2)

!$omp simd private(r4a)
  do i=1,N
     r4a(2) = r4(i)
     r4a(3) = r4(i) + 1
     r4(i) = r4a(3) - r4a(2) + i
  enddo
  write(6,*) r4(2)

!$omp simd private(r4t)
  do i=1,N
     r4t = r4(i)
     if (i .gt.1) then
        r4(i) = r4(i) + r4t
     endif
  enddo
  write(6,*) r4(2)

!$omp simd private(r4a)
  do i=1,N
     if (r4(i).gt.10) then
        r4a(2) = 2
     else
        r4a(2) = 6
     endif
     if (r4(i)+1.lt.10) then
        r4a(3) = r4(i) + 1
     else
        r4a(3) = r4(i) - 1
     endif
     r4(i) = r4a(2) + r4a(3)
  enddo
  write(6,*) r4(2)

end program private_test
