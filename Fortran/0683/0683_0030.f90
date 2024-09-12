subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  complex*8 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = conjg(b(i))
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  complex*8 a,b
  common/com1/a(n)
  common/com2/b(n)
  b = (2, 5)
  call sub
  if (a(1) .eq. conjg((2.0_4, 5.0_4))) then
     if (a(n) .eq. conjg((2.0_4, 5.0_4))) then
       print *, "PASS"
     else
       print *, a(1), a(n)
     endif
  else
     print *, a(1), a(n)
  endif
end program
