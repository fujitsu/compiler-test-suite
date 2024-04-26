program main
  integer*8 ans,i
  integer*8, dimension(10,10) :: array/100*1/

  do i=1,10
     ans = sum(array(i,1:10))
  end do

  if (ans .eq. 10) then
     print *,"OK"
  else
     print *,"NG",ans
  end if
end program main
