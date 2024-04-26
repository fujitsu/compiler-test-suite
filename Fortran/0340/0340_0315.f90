subroutine sub(n, a, b)
  integer :: n
  real,dimension(n) :: a,b

  integer :: i

  do j=1,n
     do i=1,n

        b(i) = b(i) +j
        
        if (b(i) > 0.0) then
           a(i) = 2.0 * b(i)
        end if

  end do
end do

  print *,sum(a)
end subroutine sub


program main
  integer :: n
  real,dimension(100) :: a,b
  n=100
  a=0
  do i=1,100
     b(i) = i -10
  end do

  call sub(n,a,b)
end program main
