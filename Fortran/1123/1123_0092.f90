program private_test
  parameter(N=32)
  logical*1 l1(N),l1t,l1a(N)

!$omp simd
  do i=1,N
     l1(i) = .true.
     l1a(i) = .false.
  enddo

!$omp simd private(l1t)
  do i=1,N
     l1t = l1(i)
     l1(i) = l1(i) .and. l1t
  enddo
  write(6,*) l1(2)

!$omp simd private(l1a)
  do i=1,N
     l1a(2) = l1(i)
     l1a(3) = .not.l1(i)
     l1(i) = l1a(3) .or. l1a(2)
  enddo
  write(6,*) l1(2)

!$omp simd private(l1t)
  do i=1,N
     l1t = l1(i)
     if (i .gt.1) then
        l1(i) = l1(i) .neqv. l1t
     endif
  enddo
  write(6,*) l1(2)

!$omp simd private(l1a)
  do i=1,N
     if (l1(i)) then
        l1a(2) = .false.
     else
        l1a(2) = .true.
     endif
     if (l1(i)) then
        l1a(3) = .true.
     else
        l1a(3) = .false.
     endif
     l1(i) = l1a(2) .eqv. l1a(3)
  enddo
  write(6,*) l1(2)

end program private_test
