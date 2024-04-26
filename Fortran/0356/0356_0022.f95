program main
  integer*8 n
  n = 10
  call sub(n)
end program main

subroutine sub(n)
  integer*8 ans,i,j,n
  complex,allocatable,dimension(:,:) :: array
  allocate(array(n,n))

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
end subroutine sub
