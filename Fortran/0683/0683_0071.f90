subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = sin(b(i)+0.0)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10000)
  real*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  a = 1
  b = 1
  call sub
  if (check(a(1),sin(1.0)) .and. check(a(n),sin(1.0))) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
  contains
    logical function check(r,q)
      real*4 r,q,t
      t = abs(r-q)
      check = t < 0.0005
    end function check
end program
