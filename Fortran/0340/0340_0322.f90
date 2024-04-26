program main
  real,dimension(100,100) :: b,a
  integer :: i,j
  a=2
  b=1

  do j=1,100
     do i=1,99
        b(i,j) = b(i,j) +j
     end do
     if (b(i,j) > 0.0) then
        a(i,j) = 2.0 * b(i,j)
     end if
  end do

  print *,b(1,1),a(1,1)
end program main
