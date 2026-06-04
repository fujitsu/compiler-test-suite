program private_test
  parameter(N=32)
  complex*8 c4(N),c4t,c4a(N)
  complex*8 t

!$omp simd
  do i=1,N
     c4(i) = -i
     c4a(i) = 2
  enddo

!$omp simd private(c4t)
  do i=1,N
     c4t = c4(i)
     c4(i) = c4(i) + c4t
  enddo
  t = c4(2)
  write(6,*) t

!$omp simd private(c4a)
  do i=1,N
     c4a(2) = c4(i)
     c4a(3) = c4(i) + 1
     c4(i) = c4a(3) - c4a(2) + i
  enddo
  t = c4(2)
  write(6,*) t

!$omp simd private(c4t)
  do i=1,N
     c4t = c4(i)
     if (i .gt.1) then
        c4(i) = c4(i) + c4t
     endif
  enddo
  t = c4(2)
  write(6,*) t

!$omp simd private(c4a)
  do i=1,N
     if (c4(i).eq.10) then
        c4a(2) = 2
     else
        c4a(2) = 6
     endif
     if (c4(i)+1.ne.10) then
        c4a(3) = c4(i) + 1
     else
        c4a(3) = c4(i) - 1
     endif
     c4(i) = c4a(2) + c4a(3)
  enddo
  t = c4(2)
  write(6,*) t

end program private_test
