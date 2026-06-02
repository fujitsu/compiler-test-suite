
program reduction_test
  parameter(N=32)
  logical*2 l2t,l2a(N)
  logical*1 x(N)
  logical*4 y(N)
  logical*8 z(N)

!$omp simd
  do i=1,N
     x(i) = .true.
     y(i) = .true.
     z(i) = .true.
  enddo

  l2t=.true.
!$omp simd reduction(.and.:l2t)
  do i=1,N
     l2t = l2t .and. x(i)
  enddo
  write(6,*) l2t

  l2t=.true.
!$omp simd reduction(.or.:l2t)
  do i=1,N
     l2t = l2t .or. i.gt.10
  enddo
  write(6,*) l2t
  l2t=.true.
!$omp simd reduction(.eqv.:l2t)
  do i=1,N
     l2t = l2t .eqv. y(i)
  enddo
  write(6,*) l2t
  l2t=.true.
!$omp simd reduction(.neqv.:l2t)
  do i=1,N
     l2t = l2t .neqv. z(i)
  enddo
  write(6,*) l2t


  l2a(2)=.true.
!$omp simd reduction(.and.:l2a)
  do i=1,N
     l2a(2) = l2a(2) .and. x(i)
  enddo
  write(6,*) l2a(2)

  l2a(2)=.true.
!$omp simd reduction(.or.:l2a)
  do i=1,N
     l2a(2) = l2a(2) .or. i.gt.10
  enddo
  write(6,*) l2a(2)
  l2a(2)=.true.
!$omp simd reduction(.eqv.:l2a)
  do i=1,N
     l2a(2) = l2a(2) .eqv. y(i)
  enddo
  write(6,*) l2a(2)
  l2a(2)=.true.
!$omp simd reduction(.neqv.:l2a)
  do i=1,N
     l2a(2) = l2a(2) .neqv. z(i)
  enddo
  write(6,*) l2a(2)


end program reduction_test
