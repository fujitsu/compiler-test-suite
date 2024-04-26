program main
  integer*8 n
  n = 10
  call sub(n)
end program main

subroutine sub(n)
  integer*8 ans,i,n
  integer*8,allocatable,dimension(:,:) :: array
  allocate(array(n,n))
  array=1

  do i=1,10
     ans = sum(array(i,1:10))
  end do

  if (ans .eq. 10) then
     print *,"OK"
  else
     print *,"NG",ans
  end if
  deallocate(array)
end subroutine sub
