program private_test
  parameter(N=32)
  real*16 r16(N),r16t,r16a(N)

!$omp simd
  do i=1,N
     r16(i) = -i
     r16a(i) = 2
  enddo

!$omp simd private(r16t)
  do i=1,N
     r16t = r16(i)
     r16(i) = r16(i) + r16t
  enddo
  write(6,*) r16(2)

!$omp simd private(r16a)
  do i=1,N
     r16a(2) = r16(i)
     r16a(3) = r16(i) + 1
     r16(i) = r16a(3) - r16a(2) + i
  enddo
  write(6,*) r16(2)

!$omp simd private(r16t)
  do i=1,N
     r16t = r16(i)
     if (i .gt.1) then
        r16(i) = r16(i) + r16t
     endif
  enddo
  write(6,*) r16(2)

!$omp simd private(r16a)
  do i=1,N
     if (r16(i).gt.10) then
        r16a(2) = 2
     else
        r16a(2) = 6
     endif
     if (r16(i)+1.lt.10) then
        r16a(3) = r16(i) + 1
     else
        r16a(3) = r16(i) - 1
     endif
     r16(i) = r16a(2) + r16a(3)
  enddo
  write(6,*) r16(2)

end program private_test
