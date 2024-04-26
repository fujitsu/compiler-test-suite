subroutine sub(n, a, b)
  integer :: n
  real,dimension(n) :: a,tmp
  real :: b
  integer :: i

  do i=1,n
     b = a(i)
     tmp(i) = b + 1
     if (b > 0.0) then
        a(i) = 2.0 * tmp(i)
     end if

  end do
end subroutine sub

program main
  integer :: nn=100
  real,dimension(100) :: aa
  real :: bb =2
  aa=2

  call sub(nn, aa, bb)
  print *,sum(aa)
end program main
