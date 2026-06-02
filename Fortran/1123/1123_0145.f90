
program reduction_test
  parameter(N=32)
  logical*1 l1t,l1a(N)
  logical*4 x(N)
  logical*2 y(N)
  logical*8 z(N)

!$omp simd
  do i=1,N
     x(i) = .true.
     y(i) = .true.
     z(i) = .true.
  enddo

  l1t=.true.
!$omp simd reduction(.and.:l1t)
  do i=1,N
     l1t = l1t .and. x(i)
  enddo
  write(6,*) l1t

  l1t=.true.
!$omp simd reduction(.or.:l1t)
  do i=1,N
     l1t = l1t .or. i.gt.10
  enddo
  write(6,*) l1t
  l1t=.true.
!$omp simd reduction(.eqv.:l1t)
  do i=1,N
     l1t = l1t .eqv. y(i)
  enddo
  write(6,*) l1t
  l1t=.true.
!$omp simd reduction(.neqv.:l1t)
  do i=1,N
     l1t = l1t .neqv. z(i)
  enddo
  write(6,*) l1t


  l1a(2)=.true.
!$omp simd reduction(.and.:l1a)
  do i=1,N
     l1a(2) = l1a(2) .and. x(i)
  enddo
  write(6,*) l1a(2)

  l1a(2)=.true.
!$omp simd reduction(.or.:l1a)
  do i=1,N
     l1a(2) = l1a(2) .or. i.gt.10
  enddo
  write(6,*) l1a(2)
  l1a(2)=.true.
!$omp simd reduction(.eqv.:l1a)
  do i=1,N
     l1a(2) = l1a(2) .eqv. y(i)
  enddo
  write(6,*) l1a(2)
  l1a(2)=.true.
!$omp simd reduction(.neqv.:l1a)
  do i=1,N
     l1a(2) = l1a(2) .neqv. z(i)
  enddo
  write(6,*) l1a(2)


end program reduction_test
