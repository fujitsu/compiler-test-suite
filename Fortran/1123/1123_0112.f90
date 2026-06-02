
program reduction_test
  parameter(N=32)
  logical*8 l8(N),l8t,l8b(N)

  m=1
!$omp simd
  do i=1,N
     l8(i) = i-10
     l8b(i) = m
     if (l8(i) .eqv. .false.) then
        l8(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  l8t=.true.
!$omp simd reduction(.and.:l8t)
  do i=1,N
     l8t = l8t .and. l8(i)
  enddo
  write(6,*) l8t
  l8t=.false.
!$omp simd reduction(.or.:l8t)
  do i=1,N
     l8t = l8t .or. l8(i)
  enddo
  write(6,*) l8t
  l8t=1
!$omp simd reduction(.eqv.:l8t)
  do i=1,N
     l8t = l8t .eqv. l8b(i)
  enddo
  write(6,*) l8t
  l8t=0
!$omp simd reduction(.neqv.:l8t)
  do i=1,N
     l8t = l8t .neqv. l8b(i)
  enddo
  write(6,*) l8t


end program reduction_test
