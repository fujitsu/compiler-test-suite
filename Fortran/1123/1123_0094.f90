program private_test
  parameter(N=32)
  logical*4 l4(N),l4t,l4a(N)

!$omp simd
  do i=1,N
     l4(i) = .true.
     l4a(i) = .false.
  enddo

!$omp simd private(l4t)
  do i=1,N
     l4t = l4(i)
     l4(i) = l4(i) .and. l4t
  enddo
  write(6,*) l4(2)

!$omp simd private(l4a)
  do i=1,N
     l4a(2) = l4(i)
     l4a(3) = .not.l4(i)
     l4(i) = l4a(3) .or. l4a(2)
  enddo
  write(6,*) l4(2)

!$omp simd private(l4t)
  do i=1,N
     l4t = l4(i)
     if (i .gt.1) then
        l4(i) = l4(i) .neqv. l4t
     endif
  enddo
  write(6,*) l4(2)

!$omp simd private(l4a)
  do i=1,N
     if (l4(i)) then
        l4a(2) = .false.
     else
        l4a(2) = .true.
     endif
     if (l4(i)) then
        l4a(3) = .true.
     else
        l4a(3) = .false.
     endif
     l4(i) = l4a(2) .eqv. l4a(3)
  enddo
  write(6,*) l4(2)

end program private_test
