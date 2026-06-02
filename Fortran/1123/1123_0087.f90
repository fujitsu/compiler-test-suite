program private_test
  parameter(N=32)
  complex*8 c8(N),c8t,c8a(N)

!$omp simd
  do i=1,N
     c8(i) = -i
     c8a(i) = 2
  enddo

!$omp simd private(c8t)
  do i=1,N
     c8t = c8(i)
     c8(i) = c8(i) + c8t
  enddo
  write(6,*) c8(2)

!$omp simd private(c8a)
  do i=1,N
     c8a(2) = c8(i)
     c8a(3) = c8(i) + 1
     c8(i) = c8a(3) - c8a(2) + i
  enddo
  write(6,*) c8(2)

!$omp simd private(c8t)
  do i=1,N
     c8t = c8(i)
     if (i .gt.1) then
        c8(i) = c8(i) + c8t
     endif
  enddo
  write(6,*) c8(2)

!$omp simd private(c8a)
  do i=1,N
     if (c8(i).eq.10) then
        c8a(2) = 2
     else
        c8a(2) = 6
     endif
     if (c8(i)+1.ne.10) then
        c8a(3) = c8(i) + 1
     else
        c8a(3) = c8(i) - 1
     endif
     c8(i) = c8a(2) + c8a(3)
  enddo
  write(6,*) c8(2)

end program private_test
