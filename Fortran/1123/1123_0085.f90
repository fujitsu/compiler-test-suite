program private_test
  parameter(N=32)
  complex*32 c32(N),c32t,c32a(N)

!$omp simd
  do i=1,N
     c32(i) = -i
     c32a(i) = 2
  enddo

!$omp simd private(c32t)
  do i=1,N
     c32t = c32(i)
     c32(i) = c32(i) + c32t
  enddo
  write(6,*) c32(2)

!$omp simd private(c32a)
  do i=1,N
     c32a(2) = c32(i)
     c32a(3) = c32(i) + 1
     c32(i) = c32a(3) - c32a(2) + i
  enddo
  write(6,*) c32(2)

!$omp simd private(c32t)
  do i=1,N
     c32t = c32(i)
     if (i .gt.1) then
        c32(i) = c32(i) + c32t
     endif
  enddo
  write(6,*) c32(2)

!$omp simd private(c32a)
  do i=1,N
     if (c32(i).eq.10) then
        c32a(2) = 2
     else
        c32a(2) = 6
     endif
     if (c32(i)+1.ne.10) then
        c32a(3) = c32(i) + 1
     else
        c32a(3) = c32(i) - 1
     endif
     c32(i) = c32a(2) + c32a(3)
  enddo
  write(6,*) c32(2)

end program private_test
