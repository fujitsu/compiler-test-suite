program main
  complex*8 :: r_data(100)
  integer*8 :: idx(100)
  integer*8 :: i
  
  do i=1,100
     idx(i) = i
  end do
  call sub(r_data, idx, 100_8)
  
  if (real(r_data(50)) .eq. 50.0) then
     print *,"OK"
  else
     print *,"NG",r_data(50)
  end if
end program main

subroutine sub(r_data, idx, n)
  complex*8 :: r_data(100)
  integer*8 :: idx(100)
  integer*8 :: i,n

  do i=1,n
     r_data(idx(i)) = cmplx(real(i),1.0)
  end do
end subroutine sub

