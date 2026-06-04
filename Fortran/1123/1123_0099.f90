program private_test
  parameter(N=32)
  real*8 r8(N),r8t,r8a(N)

!$omp simd
  do i=1,N
     r8(i) = -i
     r8a(i) = 2
  enddo

!$omp simd private(r8t)
  do i=1,N
     r8t = r8(i)
     r8(i) = r8(i) + r8t
  enddo
  write(6,*) r8(2)

!$omp simd private(r8a)
  do i=1,N
     r8a(2) = r8(i)
     r8a(3) = r8(i) + 1
     r8(i) = r8a(3) - r8a(2) + i
  enddo
  write(6,*) r8(2)

!$omp simd private(r8t)
  do i=1,N
     r8t = r8(i)
     if (i .gt.1) then
        r8(i) = r8(i) + r8t
     endif
  enddo
  write(6,*) r8(2)

!$omp simd private(r8a)
  do i=1,N
     if (r8(i).gt.10) then
        r8a(2) = 2
     else
        r8a(2) = 6
     endif
     if (r8(i)+1.lt.10) then
        r8a(3) = r8(i) + 1
     else
        r8a(3) = r8(i) - 1
     endif
     r8(i) = r8a(2) + r8a(3)
  enddo
  write(6,*) r8(2)

end program private_test
