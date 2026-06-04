
program reduction_test
  parameter(N=32)
  real*16 r16(N),r16t,r16a(10)
  r16t=1
  r16a=1

!$omp simd
  do i=1,N
     r16(i) = i
  enddo

!$omp simd reduction(+:r16t)
  do i=1,N
     r16t = r16t + r16(i)
  enddo
  write(6,*) r16t

!$omp simd reduction(+:r16a)
  do i=1,N-1
     r16a(2) = r16a(2) + r16(i)
  enddo
  write(6,*) r16a(2)

!$omp simd reduction(+:r16t)
  do i=1,N-2
     if (i>10) then
        r16t = r16t + r16(i)
     endif
  enddo
  write(6,*) r16t

!$omp simd reduction(+:r16a)
  do i=1,N-3
     if (i>10) then
        r16a(2) = r16a(2) + r16(i)
     endif
  enddo
  write(6,*) r16a(2)

!$omp simd reduction(+:r16t)
  do i=1,N-4
     if (r16(1) < 10) then
        r16t = r16t + r16(i)
     endif
  enddo
  write(6,*) r16t

!$omp simd reduction(+:r16a)
  do i=1,N-5
     if (r16(1) < 10) then
        r16a(2) = r16a(2) + r16(i)
     endif
  enddo
  write(6,*) r16a(2)

end program reduction_test
