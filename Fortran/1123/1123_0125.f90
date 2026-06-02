

program reduction_test
  parameter(N=32)
  logical*1 l1(N),l1t,l1a(10)
  l1t=.true.
  l1a=.true.
!$omp simd
  do i=1,N
     l1(i) = .true.
  enddo

!$omp simd reduction(.and.:l1t)
  do i=1,N
     l1t = l1t .and. l1(i)
  enddo
  write(6,*) l1t

!$omp simd reduction(.and.:l1a)
  do i=1,N-1
     l1a(2) = l1a(2) .and. l1(i)
  enddo
  write(6,*) l1a(2)

!$omp simd reduction(.and.:l1t)
  do i=1,N-2
     if (i>10) then
        l1t = l1t .and. l1(i)
     endif
  enddo
  write(6,*) l1t

!$omp simd reduction(.and.:l1a)
  do i=1,N-3
     if (i>10) then
        l1a(2) = l1a(2) .and. l1(i)
     endif
  enddo
  write(6,*) l1a(2)

!$omp simd reduction(.and.:l1t)
  do i=1,N-4
     if (l1(1)) then
        l1t = l1t .and. l1(i)
     endif
  enddo
  write(6,*) l1t

!$omp simd reduction(.and.:l1a)
  do i=1,N-5
     if (l1(1)) then
        l1a(2) = l1a(2) .and. l1(i)
     endif
  enddo
  write(6,*) l1a(2)

end program reduction_test
