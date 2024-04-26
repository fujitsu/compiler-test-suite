subroutine sub(n, a, b)
  integer :: n
  real,dimension(n) :: a,b

  integer :: i

  do i=1,n

     b(i) = a(i)

     if (b(i) > 0.0) then
        a(i) = 2.0 * b(i)
     else
        a(i) = 2.0 * abs(b(i))
     end if

  end do
end subroutine sub

program main
  integer :: nn=100
  real,dimension(100) :: aa,bb
  aa=2
  bb=7

  call sub(nn, aa, bb)
  print *,sum(aa)
end program main
