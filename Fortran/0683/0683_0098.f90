subroutine sub(a, n)
  implicit none
  integer*8 i,n
  complex*8 a(n),ss
  common/com2/ss
  do i=1,n
      ss = a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  complex*8 a,ss
  common/com1/a(n)
  common/com2/ss
  ss =0
  do i=1,n
     a(i) = i
  end do
  call sub(a, n)
  if (ss .eq. 10003.0000) then
     print *, "PASS"
  else
     print *, ss
  endif
end program
