subroutine sub(a,z)
  integer*8   :: a
  real*4      :: z
  
  z = real(ibits(a, 13, 1))
end subroutine sub

program main
  integer*8   :: a
  real*4      :: z
  
  a = 8192_8

  call sub(a,z)

  if(z .eq. 1.0) then
     write(6, *) 'OK'
  else
     write(6, *) 'NG'
  end if
end program main
