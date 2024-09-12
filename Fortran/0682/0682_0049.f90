subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=2)
  integer a, s
  common/com1/a(n)
  s = 0
  !$omp simd
  do i=1,n
     if (i.ne.1) a(i) = 1
!$omp ordered simd
     s = s + 1
!$omp end ordered
  end do
  if (s .ne. n) then
     print *, "s:", s
     stop
  endif
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=2)
  integer a
  common/com1/a(n)
  a = 0
  call sub
  if (a(1) .eq. 0 .and. a(n) .eq. 1) then
  else
     print *, "a:", a(1), a(n)
     stop
  endif
  print *, "PASS"
end program
