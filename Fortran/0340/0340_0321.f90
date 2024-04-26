program main
  real :: a
  real,dimension(100,100) :: b,tmp
  integer :: i,j
  a=2
  b=0
  tmp = 0.0

  do j = 1,100
     if (j .eq. 50) then
     do i = 1,100
        b(i,j) = a
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2

        b(i,j) = b(i,j) + tmp(i,j)
     end do
  end if
  end do


  print *,sum(b)
end program main
