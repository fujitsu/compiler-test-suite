

program reduction_test
  parameter(N=32)
  logical*8 l8(N),l8t,l8a(10)
  l8t=.true.
  l8a=.true.

!$omp simd
  do i=1,N
     l8(i) = .true.
  enddo

!$omp simd reduction(.and.:l8t)
  do i=1,N
     l8t = l8t .and. l8(i)
  enddo
  write(6,*) l8t

!$omp simd reduction(.and.:l8a)
  do i=1,N-1
     l8a(2) = l8a(2) .and. l8(i)
  enddo
  write(6,*) l8a(2)

!$omp simd reduction(.and.:l8t)
  do i=1,N-2
     if (i>10) then
        l8t = l8t .and. l8(i)
     endif
  enddo
  write(6,*) l8t

!$omp simd reduction(.and.:l8a)
  do i=1,N-3
     if (i>10) then
        l8a(2) = l8a(2) .and. l8(i)
     endif
  enddo
  write(6,*) l8a(2)

!$omp simd reduction(.and.:l8t)
  do i=1,N-4
     if (l8(1)) then
        l8t = l8t .and. l8(i)
     endif
  enddo
  write(6,*) l8t

!$omp simd reduction(.and.:l8a)
  do i=1,N-5
     if (l8(1)) then
        l8a(2) = l8a(2) .and. l8(i)
     endif
  enddo
  write(6,*) l8a(2)

end program reduction_test
