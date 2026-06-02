program private_test
  parameter(N=32)
  logical*2 l2(N),l2t,l2a(N)

!$omp simd
  do i=1,N
     l2(i) = .true.
     l2a(i) = .false.
  enddo

!$omp simd private(l2t)
  do i=1,N
     l2t = l2(i)
     l2(i) = l2(i) .and. l2t
  enddo
  write(6,*) l2(2)

!$omp simd private(l2a)
  do i=1,N
     l2a(2) = l2(i)
     l2a(3) = .not.l2(i)
     l2(i) = l2a(3) .or. l2a(2)
  enddo
  write(6,*) l2(2)

!$omp simd private(l2t)
  do i=1,N
     l2t = l2(i)
     if (i .gt.1) then
        l2(i) = l2(i) .neqv. l2t
     endif
  enddo
  write(6,*) l2(2)

!$omp simd private(l2a)
  do i=1,N
     if (l2(i)) then
        l2a(2) = .false.
     else
        l2a(2) = .true.
     endif
     if (l2(i)) then
        l2a(3) = .true.
     else
        l2a(3) = .false.
     endif
     l2(i) = l2a(2) .eqv. l2a(3)
  enddo
  write(6,*) l2(2)

end program private_test
