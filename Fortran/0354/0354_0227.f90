module data
  type str
     integer*8 i_data1
     integer*8 i_data2
  end type str
end module data

program main
  use data
  type(str) r_data1(100), r_data2(100), r_data3(100)
  do i=1,100
     r_data2(i)%i_data1 = i
     r_data2(i)%i_data2 = i
     r_data3(i)%i_data1 = i
     r_data3(i)%i_data2 = i
  end do
  call sub(r_data1, r_data2, r_data3, 100_8)
  if (r_data1(51)%i_data1 .eq. 102) then
     print *,"OK"
  else
     print *,"NG",r_data1(51)
  end if
end program main

subroutine sub(r_data1, r_data2, r_data3, n)
  use data
  type(str) :: r_data1(100), r_data2(100), r_data3(100)
  integer*8 :: i,n
  do i=1,n,2
     r_data1(i)%i_data1 = r_data2(i)%i_data1 + r_data3(i)%i_data1
     r_data1(i)%i_data2 = r_data2(i)%i_data2 + r_data3(i)%i_data2
  end do
end subroutine sub

