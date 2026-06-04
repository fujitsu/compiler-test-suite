program private_test
  parameter(N=32)
  integer*8 i8(N),i8t,i8a(N)

!$omp simd
  do i=1,N
     i8(i) = -i
     i8a(i) = 2
  enddo

!$omp simd private(i8t)
  do i=1,N
     i8t = i8(i)
     i8(i) = i8(i) + i8t
  enddo
  write(6,*) i8(2)

!$omp simd private(i8a)
  do i=1,N
     i8a(2) = i8(i)
     i8a(3) = i8(i) + 1
     i8(i) = i8a(3) - i8a(2) + i
  enddo
  write(6,*) i8(2)

!$omp simd private(i8t)
  do i=1,N
     i8t = i8(i)
     if (i .gt.1) then
        i8(i) = i8(i) + i8t
     endif
  enddo
  write(6,*) i8(2)

!$omp simd private(i8a)
  do i=1,N
     if (i8(i).gt.10) then
        i8a(2) = 2
     else
        i8a(2) = 6
     endif
     if (i8(i)+1.lt.10) then
        i8a(3) = i8(i) + 1
     else
        i8a(3) = i8(i) - 1
     endif
     i8(i) = i8a(2) + i8a(3)
  enddo
  write(6,*) i8(2)

end program private_test
