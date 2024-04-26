program main
  real :: a
  real,dimension(100,100) :: b,tmp
  integer :: i,j,k
  a=2
  b=0
  tmp = 2.0
  k=10

  do j = 1,100
     do i = 1,100

        b(i,j) = a

        if ( k .eq. 10) then
           b(i,j) = tmp(i,j)
        end if
     end do
  end do


  print *,sum(b)
end program main
