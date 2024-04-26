program main
  integer*8 ans,i
  type str_data
     integer*8 :: data_1 = 1
     integer*8 :: data_2 = 2
  end type str_data
  type(str_data),pointer :: array(:,:)
  allocate(array(10,10))

  do i=1,10
     ans = sum(array(i,1:10)%data_2)
  end do

  if (ans .eq. 20) then
     print *,"OK"
  else
     print *,"NG",ans
  end if

end program main
