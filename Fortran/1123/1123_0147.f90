
program reduction_test
  parameter(N=32)
  logical*4 l4t,l4a(N)
  logical*1 x(N)
  logical*2 y(N)
  logical*8 z(N)

!$omp simd
  do i=1,N
     x(i) = .true.
     y(i) = .true.
     z(i) = .true.
  enddo

  l4t=.true.
!$omp simd reduction(.and.:l4t)
  do i=1,N
     l4t = l4t .and. x(i)
  enddo
  write(6,*) l4t

  l4t=.true.
!$omp simd reduction(.or.:l4t)
  do i=1,N
     l4t = l4t .or. i.gt.10
  enddo
  write(6,*) l4t
  l4t=.true.
!$omp simd reduction(.eqv.:l4t)
  do i=1,N
     l4t = l4t .eqv. y(i)
  enddo
  write(6,*) l4t
  l4t=.true.
!$omp simd reduction(.neqv.:l4t)
  do i=1,N
     l4t = l4t .neqv. z(i)
  enddo
  write(6,*) l4t


  l4a(2)=.true.
!$omp simd reduction(.and.:l4a)
  do i=1,N
     l4a(2) = l4a(2) .and. x(i)
  enddo
  write(6,*) l4a(2)

  l4a(2)=.true.
!$omp simd reduction(.or.:l4a)
  do i=1,N
     l4a(2) = l4a(2) .or. i.gt.10
  enddo
  write(6,*) l4a(2)
  l4a(2)=.true.
!$omp simd reduction(.eqv.:l4a)
  do i=1,N
     l4a(2) = l4a(2) .eqv. y(i)
  enddo
  write(6,*) l4a(2)
  l4a(2)=.true.
!$omp simd reduction(.neqv.:l4a)
  do i=1,N
     l4a(2) = l4a(2) .neqv. z(i)
  enddo
  write(6,*) l4a(2)


end program reduction_test
