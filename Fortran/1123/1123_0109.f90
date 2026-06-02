
program reduction_test
  parameter(N=32)
  logical*1 l1(N),l1t,l1b(N)

  m=1
!$omp simd
  do i=1,N
     l1(i) = i-10
     l1b(i) = m
     if (l1(i) .eqv. .false.) then
        l1(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  l1t=.true.
!$omp simd reduction(.and.:l1t)
  do i=1,N
     l1t = l1t .and. l1(i)
  enddo
  write(6,*) l1t
  l1t=.false.
!$omp simd reduction(.or.:l1t)
  do i=1,N
     l1t = l1t .or. l1(i)
  enddo
  write(6,*) l1t
  l1t=1
!$omp simd reduction(.eqv.:l1t)
  do i=1,N
     l1t = l1t .eqv. l1b(i)
  enddo
  write(6,*) l1t
  l1t=0
!$omp simd reduction(.neqv.:l1t)
  do i=1,N
     l1t = l1t .neqv. l1b(i)
  enddo
  write(6,*) l1t


end program reduction_test
