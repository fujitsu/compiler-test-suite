program main
  integer*8::array(100,100,100)
  do i=1,1
     do j=1,1
        do k=1,1
           array(k,j,i) = k+j+i
           if (i > j) then
              stop
           end if
        end do
     end do
  end do

  if (array(1,1,1) == 3) then
     print *,"OK"
  else
     print *,"NG",array(1,1,1)
  end if

end program main
