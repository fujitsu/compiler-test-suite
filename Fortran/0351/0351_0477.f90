subroutine sub(a,z)
  integer :: a
  real*8  :: z
  
  z = dble(ibits(a, 13, 1))
end subroutine sub

program main
  integer :: a
  real*8  :: z
  
  a = 8192_4

  call sub(a,z)
  
  if(z .eq. 1.0_8) then
     write(6,*) 'OK'
  else
     write(6,*) 'NG'
  end if
end program main
