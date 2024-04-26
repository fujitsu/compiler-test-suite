module data
  type str
     integer*8 i_data1
     integer*8 i_data2
  end type str
end module data

program main
  use data
  type(str) :: r_data1(10,10), r_data2(10,10), r_data3(10,10)
  integer*8 :: idx(10)
  integer*8 :: i

  r_data2%i_data1 = 1
  r_data2%i_data2 = 2
  r_data3%i_data1 = 3
  r_data3%i_data2 = 4
  
  do i=1,10
     idx(i) = i
  end do
  call sub(r_data1, r_data2, r_data3, idx, 10_8)
  
  if (r_data1(5,5)%i_data1 .eq. 4) then
     print *,"OK"
  else
     print *,"NG",r_data1(5,5)
  end if
end program main

subroutine sub(r_data1, r_data2, r_data3, idx, n)
  use data
  type(str) :: r_data1(10,10), r_data2(10,10), r_data3(10,10)
  integer*8 :: idx(10)
  integer*8 :: i,j,n
  
  do i=1,n
     do j=1,n
        r_data1(idx(j),i)%i_data1 = r_data2(idx(j),i)%i_data1 + r_data3(idx(j),i)%i_data1
        r_data1(idx(j),i)%i_data2 = r_data2(idx(j),i)%i_data2 + r_data3(idx(j),i)%i_data2
     end do
  end do
end subroutine sub

