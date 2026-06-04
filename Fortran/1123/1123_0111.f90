
program reduction_test
  parameter(N=32)
  logical*4 l4(N),l4t,l4b(N)

  m=1
!$omp simd
  do i=1,N
     l4(i) = i-10
     l4b(i) = m
     if (l4(i) .eqv. .false.) then
        l4(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  l4t=.true.
!$omp simd reduction(.and.:l4t)
  do i=1,N
     l4t = l4t .and. l4(i)
  enddo
  write(6,*) l4t
  l4t=.false.
!$omp simd reduction(.or.:l4t)
  do i=1,N
     l4t = l4t .or. l4(i)
  enddo
  write(6,*) l4t
  l4t=1
!$omp simd reduction(.eqv.:l4t)
  do i=1,N
     l4t = l4t .eqv. l4b(i)
  enddo
  write(6,*) l4t
  l4t=0
!$omp simd reduction(.neqv.:l4t)
  do i=1,N
     l4t = l4t .neqv. l4b(i)
  enddo
  write(6,*) l4t


end program reduction_test
