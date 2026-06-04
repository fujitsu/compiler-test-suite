
program reduction_test
  parameter(N=32)
  logical*8 l8t,l8a(N)
  logical*1 x(N)
  logical*2 y(N)
  logical*4 z(N)

!$omp simd
  do i=1,N
     x(i) = .true.
     y(i) = .true.
     z(i) = .true.
  enddo

  l8t=.true.
!$omp simd reduction(.and.:l8t)
  do i=1,N
     l8t = l8t .and. x(i)
  enddo
  write(6,*) l8t

  l8t=.true.
!$omp simd reduction(.or.:l8t)
  do i=1,N
     l8t = l8t .or. i.gt.10
  enddo
  write(6,*) l8t
  l8t=.true.
!$omp simd reduction(.eqv.:l8t)
  do i=1,N
     l8t = l8t .eqv. y(i)
  enddo
  write(6,*) l8t
  l8t=.true.
!$omp simd reduction(.neqv.:l8t)
  do i=1,N
     l8t = l8t .neqv. z(i)
  enddo
  write(6,*) l8t


  l8a(2)=.true.
!$omp simd reduction(.and.:l8a)
  do i=1,N
     l8a(2) = l8a(2) .and. x(i)
  enddo
  write(6,*) l8a(2)

  l8a(2)=.true.
!$omp simd reduction(.or.:l8a)
  do i=1,N
     l8a(2) = l8a(2) .or. i.gt.10
  enddo
  write(6,*) l8a(2)
  l8a(2)=.true.
!$omp simd reduction(.eqv.:l8a)
  do i=1,N
     l8a(2) = l8a(2) .eqv. y(i)
  enddo
  write(6,*) l8a(2)
  l8a(2)=.true.
!$omp simd reduction(.neqv.:l8a)
  do i=1,N
     l8a(2) = l8a(2) .neqv. z(i)
  enddo
  write(6,*) l8a(2)


end program reduction_test
