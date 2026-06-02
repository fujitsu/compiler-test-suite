
program reduction_test
  parameter(N=32)
  logical*2 l2(N),l2t,l2b(N)

  m=1
!$omp simd
  do i=1,N
     l2(i) = i-10
     l2b(i) = m
     if (l2(i) .eqv. .false.) then
        l2(i) = 1
     endif
     m=m+1
     if (m .gt. 2) then
        m = 1
     endif
  enddo

  l2t=.true.
!$omp simd reduction(.and.:l2t)
  do i=1,N
     l2t = l2t .and. l2(i)
  enddo
  write(6,*) l2t
  l2t=.false.
!$omp simd reduction(.or.:l2t)
  do i=1,N
     l2t = l2t .or. l2(i)
  enddo
  write(6,*) l2t
  l2t=1
!$omp simd reduction(.eqv.:l2t)
  do i=1,N
     l2t = l2t .eqv. l2b(i)
  enddo
  write(6,*) l2t
  l2t=0
!$omp simd reduction(.neqv.:l2t)
  do i=1,N
     l2t = l2t .neqv. l2b(i)
  enddo
  write(6,*) l2t


end program reduction_test
