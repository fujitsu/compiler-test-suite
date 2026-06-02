

program reduction_test
  parameter(N=32)
  logical*4 l4(N),l4t,l4a(10)
  l4t=.true.
  l4a=.true.

!$omp simd
  do i=1,N
     l4(i) = .true.
  enddo

!$omp simd reduction(.and.:l4t)
  do i=1,N
     l4t = l4t .and. l4(i)
  enddo
  write(6,*) l4t

!$omp simd reduction(.and.:l4a)
  do i=1,N-1
     l4a(2) = l4a(2) .and. l4(i)
  enddo
  write(6,*) l4a(2)

!$omp simd reduction(.and.:l4t)
  do i=1,N-2
     if (i>10) then
        l4t = l4t .and. l4(i)
     endif
  enddo
  write(6,*) l4t

!$omp simd reduction(.and.:l4a)
  do i=1,N-3
     if (i>10) then
        l4a(2) = l4a(2) .and. l4(i)
     endif
  enddo
  write(6,*) l4a(2)

!$omp simd reduction(.and.:l4t)
  do i=1,N-4
     if (l4(1)) then
        l4t = l4t .and. l4(i)
     endif
  enddo
  write(6,*) l4t

!$omp simd reduction(.and.:l4a)
  do i=1,N-5
     if (l4(1)) then
        l4a(2) = l4a(2) .and. l4(i)
     endif
  enddo
  write(6,*) l4a(2)

end program reduction_test
