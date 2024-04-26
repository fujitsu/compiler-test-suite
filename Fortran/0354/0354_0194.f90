program main
  integer*8 r_data(10,10)
  call sub(r_data,10_8)
  if (r_data(5,7) .eq. 1) then
     print *,"OK"
  else
     print *,"NG",r_data(5,7)
  end if
end program main

subroutine sub(r_data, n)
  integer*8 :: r_data(10,10)
  integer*8 :: i,j,n
  do i=1,n,2
     do j=1,n,2
        r_data(i,j) = 1.0
     end do
  end do
end subroutine sub

