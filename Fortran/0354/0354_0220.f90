program main
  complex*8 r_data1(100), r_data2(100), r_data3(100)
  r_data2 = cmplx(1.0,1.0)
  r_data3 = cmplx(2.0,2.0)
  call sub(r_data1, r_data2, r_data3, 100_8)
  if (real(r_data1(50)) .eq. 3) then
     print *,"OK"
  else
     print *,"NG",r_data1(50)
  end if
end program main

subroutine sub(r_data1, r_data2, r_data3, n)
  complex*8 :: r_data1(100), r_data2(100), r_data3(100)
  integer*8 :: i,n
  do i=1,n
     r_data1(i) = r_data2(i) + r_data3(i)
  end do
end subroutine sub

