program private_test
  parameter(N=32)
  integer*2 i2(N),i2t,i2a(N)

!$omp simd
  do i=1,N
     i2(i) = -i
     i2a(i) = 2
  enddo

!$omp simd private(i2t)
  do i=1,N
     i2t = i2(i)
     i2(i) = i2(i) + i2t
  enddo
  write(6,*) i2(2)

!$omp simd private(i2a)
  do i=1,N
     i2a(2) = i2(i)
     i2a(3) = i2(i) + 1
     i2(i) = i2a(3) - i2a(2) + i
  enddo
  write(6,*) i2(2)

!$omp simd private(i2t)
  do i=1,N
     i2t = i2(i)
     if (i .gt.1) then
        i2(i) = i2(i) + i2t
     endif
  enddo
  write(6,*) i2(2)

!$omp simd private(i2a)
  do i=1,N
     if (i2(i).gt.10) then
        i2a(2) = 2
     else
        i2a(2) = 6
     endif
     if (i2(i)+1.lt.10) then
        i2a(3) = i2(i) + 1
     else
        i2a(3) = i2(i) - 1
     endif
     i2(i) = i2a(2) + i2a(3)
  enddo
  write(6,*) i2(2)

end program private_test
