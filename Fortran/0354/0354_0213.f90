program main
  real*4    :: r_data1(10,10), r_data2(10,10), r_data3(10,10)
  integer*8 :: idx(10)
  integer*8 :: i

  r_data2 = 1.0
  r_data3 = 2.0
  do i=1,10
     idx(i) = i
  end do
  call sub(r_data1, r_data2, r_data3, idx, 10_8)
  
  if (r_data1(5,5) .eq. 3.0) then
     print *,"OK"
  else
     print *,"NG",r_data1(5,5)
  end if
end program main

subroutine sub(r_data1, r_data2, r_data3, idx, n)
  real*4    :: r_data1(10,10), r_data2(10,10), r_data3(10,10)
  integer*8 :: idx(10)
  integer*8 :: i,j,n
  
  do i=1,n
     do j=1,n
        r_data1(idx(j),i) = r_data2(idx(j),i) + r_data3(idx(j),i)
     end do
  end do
end subroutine sub

