program main
  integer*8 n
  n=10
  call sub(n)
end program main

subroutine sub(n)
  integer*8 ans,i,n
  type str_data
     integer*8 :: data_1 = 1
     integer*8 :: data_2 = 2
  end type str_data
  type(str_data),allocatable,dimension(:,:) :: array
  allocate(array(n,n))

  do i=1,10
     ans = sum(array(i,1:10)%data_2)
  end do

  if (ans .eq. 20) then
     print *,"OK"
  else
     print *,"NG",ans
  end if
end subroutine sub
