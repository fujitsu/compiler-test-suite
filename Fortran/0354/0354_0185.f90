program main
  real*4 r_data(100)
  call sub(r_data,100_8)
  if (r_data(50) .eq. 1.0) then
     print *,"OK"
  else
     print *,"NG",r_data(50)
  end if
end program main

subroutine sub(r_data, n)
  real*4    :: r_data(100)
  integer*8 :: i,n
  do i=1,n
     r_data(50) = 1.0
  end do
end subroutine sub

