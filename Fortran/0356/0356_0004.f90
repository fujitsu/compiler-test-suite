program main
  integer*8::array(100,100,100)
  do i=1,1
     do j=1,100
        do k=1,100
           array(k,j,i) = k+j+i
        end do
     end do
  end do

  if (array(34,53,1) == 88) then
     print *,"OK"
  else
     print *,"NG",array(34,53,1)
  end if

end program main
