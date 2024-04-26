subroutine sub(n, a, b)
  integer :: n
  real,dimension(n,n) :: a,b

  integer :: i

  do j=1,n
     do i=1,n

        b(i,j) = b(i,j) +1
        
        if (b(i,j) > 0.0) then
           a(i,j) = 2.0 * b(i,j)
        end if

  end do
end do

  print *,sum(a)
end subroutine sub


program main
  integer :: n
  real,dimension(100,100) :: a,b
  n=100
  a=0
  do j=1,100
     do i=1,100
        b(i,j) = i -10
     end do
  end do

  call sub(n,a,b)
end program main
