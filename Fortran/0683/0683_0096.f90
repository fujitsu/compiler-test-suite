subroutine sub(a, n)
  implicit none
  integer*8 i,n
  logical*8 a(n),ss
  common/com2/ss
  !$omp simd reduction(.and.:ss)
  do i=1,n
     ss = ss .and. a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  logical*8 a,ss
  common/com1/a(n)
  common/com2/ss
  ss = .false.
  do i=1,n
     if (mod(i,2).eq.0) then
     a(i) = .true.
     else
     a(i) = .false.
     endif
  end do
  call sub(a, n)
  if (ss .eqv. .false.) then
  else
     print *, ss
     stop
  endif
  ss = .true.
  do i=1,n
     a(i) = .true.
  end do
  call sub(a, n)
  if (ss .eqv. .true.) then
  else
     print *, ss
     stop
  endif
  print *, "PASS"
end program
