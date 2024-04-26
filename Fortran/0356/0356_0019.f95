program main
  integer*8 ans,i,j
  complex,pointer :: array(:,:)
  allocate(array(10,10))

  do i=1,5
     do j=1,10
        array(j,i) = CMPLX(real(j),real(i))
     end do
  end do

  do i=6,10
     do j=1,10
        array(j,i) = CMPLX(real(j+1),real(i+2))
     end do
  end do

  do i=1,10
     ans = sum(aimag(array(i,1:10)))
  end do

  if (ans .eq. 65) then
     print *,"OK"
  else
     print *,"NG",ans
  end if

end program main
