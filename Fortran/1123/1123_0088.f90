program private_test
  parameter(N=32)
  integer*1 i1(N),i1t,i1a(N)

!$omp simd
  do i=1,N
     i1(i) = -i
     i1a(i) = 2
  enddo

!$omp simd private(i1t)
  do i=1,N
     i1t = i1(i)
     i1(i) = i1(i) + i1t
  enddo
  write(6,*) i1(2)

!$omp simd private(i1a)
  do i=1,N
     i1a(2) = i1(i)
     i1a(3) = i1(i) + 1
     i1(i) = i1a(3) - i1a(2) + i
  enddo
  write(6,*) i1(2)

!$omp simd private(i1t)
  do i=1,N
     i1t = i1(i)
     if (i .gt.1) then
        i1(i) = i1(i) + i1t
     endif
  enddo
  write(6,*) i1(2)

!$omp simd private(i1a)
  do i=1,N
     if (i1(i).gt.10) then
        i1a(2) = 2
     else
        i1a(2) = 6
     endif
     if (i1(i)+1.lt.10) then
        i1a(3) = i1(i) + 1
     else
        i1a(3) = i1(i) - 1
     endif
     i1(i) = i1a(2) + i1a(3)
  enddo
  write(6,*) i1(2)

end program private_test
