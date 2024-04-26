program main
  real,dimension(10000) :: b,tmp
  integer :: i
  tmp = 2.0


  do i = 1,10000,1
     b(i) = tmp(i)
     do j = 1,10,1
        tmp(i) = tmp(i) +1
     end do
  end do


  print *,b(1),tmp(1),tmp(2)
end program main
