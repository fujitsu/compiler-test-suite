module data
  type str
     integer*8 i_data1
     integer*8 i_data2
  end type str
end module data

program main
  use data
  type(str) :: r_data1(100), r_data2(100), r_data3(100)
  integer*8 :: idx(100)
  integer*8 :: i

  do i=1,100
     idx(i) = i
     r_data2(i)%i_data1 = i
     r_data2(i)%i_data2 = i
     r_data3(i)%i_data1 = i
     r_data3(i)%i_data2 = i
  end do
  call sub(r_data1, r_data2, r_data3, idx, 100_8)
  
  if (r_data1(50)%i_data1 .eq. 100) then
     print *,"OK"
  else
     print *,"NG",r_data1(50)
  end if
end program main

subroutine sub(r_data1, r_data2, r_data3, idx, n)
  use data
  type(str) :: r_data1(100), r_data2(100), r_data3(100)
  integer*8 :: idx(100)
  integer*8 :: i,n
  
  do i=1,n
     r_data1(idx(i))%i_data1 = r_data2(idx(i))%i_data1 + r_data3(idx(i))%i_data1
     r_data1(idx(i))%i_data2 = r_data2(idx(i))%i_data2 + r_data3(idx(i))%i_data2
  end do
end subroutine sub

