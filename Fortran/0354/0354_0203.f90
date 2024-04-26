module data
  type str
     real*4 r_data1
     real*4 r_data2
  end type str
end module data

program main
  use data
  type(str) r_data(100)
  call sub(r_data,100_8)
  if (r_data(51)%r_data1 .eq. 51.0) then
     print *,"OK"
  else
     print *,"NG",r_data(51)%r_data1
  end if
end program main

subroutine sub(r_data, n)
  use data
  type(str) :: r_data(100)
  integer*8 :: i,n
  do i=1,n,2
     r_data(i)%r_data1 = real(i)
     r_data(i)%r_data2 = real(i)
  end do
end subroutine sub

