program private_test
  parameter(N=32)
  complex*16 c16(N),c16t,c16a(N)

!$omp simd
  do i=1,N
     c16(i) = -i
     c16a(i) = 2
  enddo

!$omp simd private(c16t)
  do i=1,N
     c16t = c16(i)
     c16(i) = c16(i) + c16t
  enddo
  write(6,*) c16(2)

!$omp simd private(c16a)
  do i=1,N
     c16a(2) = c16(i)
     c16a(3) = c16(i) + 1
     c16(i) = c16a(3) - c16a(2) + i
  enddo
  write(6,*) c16(2)

!$omp simd private(c16t)
  do i=1,N
     c16t = c16(i)
     if (i .gt.1) then
        c16(i) = c16(i) + c16t
     endif
  enddo
  write(6,*) c16(2)

!$omp simd private(c16a)
  do i=1,N
     if (c16(i).eq.10) then
        c16a(2) = 2
     else
        c16a(2) = 6
     endif
     if (c16(i)+1.ne.10) then
        c16a(3) = c16(i) + 1
     else
        c16a(3) = c16(i) - 1
     endif
     c16(i) = c16a(2) + c16a(3)
  enddo
  write(6,*) c16(2)

end program private_test
