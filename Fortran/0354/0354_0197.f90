program main
  complex*8 r_data(100)
  call sub(r_data,100_8)
  if (real(r_data(51)) .eq. 51) then
     print *,"OK"
  else
     print *,"NG",r_data(51)
  end if
end program main

subroutine sub(r_data, n)
  complex*8 :: r_data(100)
  integer*8 :: i,n
  do i=1,n,2
     r_data(i) = cmplx(real(i),1.0)
  end do
end subroutine sub

