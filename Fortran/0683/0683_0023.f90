!
!
subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  real*8 a
  complex*16 b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = cdabs(b(i))
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  real*8 a, ans1, ans2
  complex*16 b
  common/com1/a(n)
  common/com2/b(n)
  a = 0
  b = (2, 5)
  call sub
  ans1 = cdabs((2._8,5._8))
  ans2 = cdabs((2._8,5._8))
  if (abs((a(1)-ans1)/ans1) < 0.00001.and. abs((a(n)-ans2))/ans2 < 0.00001) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program
