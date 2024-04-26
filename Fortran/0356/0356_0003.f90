program main
  integer*8::array(100,100,100)
  do i=1,100
     do j=1,2
        do k=1,100
           array(k,j,i) = k+j+i
        end do
     end do
  end do

  if (array(20,2,31) == 53) then
     print *,"OK"
  else
     print *,"NG",array(20,2,31)
  end if

end program main
