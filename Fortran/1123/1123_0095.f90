program private_test
  parameter(N=32)
  logical*8 l8(N),l8t,l8a(N)

!$omp simd
  do i=1,N
     l8(i) = .true.
     l8a(i) = .false.
  enddo

!$omp simd private(l8t)
  do i=1,N
     l8t = l8(i)
     l8(i) = l8(i) .and. l8t
  enddo
  write(6,*) l8(2)

!$omp simd private(l8a)
  do i=1,N
     l8a(2) = l8(i)
     l8a(3) = .not.l8(i)
     l8(i) = l8a(3) .or. l8a(2)
  enddo
  write(6,*) l8(2)

!$omp simd private(l8t)
  do i=1,N
     l8t = l8(i)
     if (i .gt.1) then
        l8(i) = l8(i) .neqv. l8t
     endif
  enddo
  write(6,*) l8(2)

!$omp simd private(l8a)
  do i=1,N
     if (l8(i)) then
        l8a(2) = .false.
     else
        l8a(2) = .true.
     endif
     if (l8(i)) then
        l8a(3) = .true.
     else
        l8a(3) = .false.
     endif
     l8(i) = l8a(2) .eqv. l8a(3)
  enddo
  write(6,*) l8(2)

end program private_test
