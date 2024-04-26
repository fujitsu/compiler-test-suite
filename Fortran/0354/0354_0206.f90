module data
  type str
     real*4 r_data1
     real*4 r_data2
  end type str
end module data

program main
  use data
  type(str) r_data(10,10)
  call sub(r_data,10_8)
  if (r_data(5,5)%r_data1 .eq. 5.0) then
     print *,"OK"
  else
     print *,"NG",r_data(5,5)%r_data1
  end if
end program main

subroutine sub(r_data, n)
  use data
  type(str) :: r_data(10,10)
  integer*8 :: i,j,n
  do i=1,n,2
     do j=1,n,2
        r_data(j,i)%r_data1 = real(j)
        r_data(j,i)%r_data2 = real(j)
     end do
  end do
end subroutine sub

