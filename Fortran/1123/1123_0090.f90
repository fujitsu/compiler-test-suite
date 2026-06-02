program private_test
  parameter(N=32)
  integer*4 i4(N),i4t,i4a(N)

!$omp simd
  do i=1,N
     i4(i) = -i
     i4a(i) = 2
  enddo

!$omp simd private(i4t)
  do i=1,N
     i4t = i4(i)
     i4(i) = i4(i) + i4t
  enddo
  write(6,*) i4(2)

!$omp simd private(i4a)
  do i=1,N
     i4a(2) = i4(i)
     i4a(3) = i4(i) + 1
     i4(i) = i4a(3) - i4a(2) + i
  enddo
  write(6,*) i4(2)

!$omp simd private(i4t)
  do i=1,N
     i4t = i4(i)
     if (i .gt.1) then
        i4(i) = i4(i) + i4t
     endif
  enddo
  write(6,*) i4(2)

!$omp simd private(i4a)
  do i=1,N
     if (i4(i).gt.10) then
        i4a(2) = 2
     else
        i4a(2) = 6
     endif
     if (i4(i)+1.lt.10) then
        i4a(3) = i4(i) + 1
     else
        i4a(3) = i4(i) - 1
     endif
     i4(i) = i4a(2) + i4a(3)
  enddo
  write(6,*) i4(2)

end program private_test
