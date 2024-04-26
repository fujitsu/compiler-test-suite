subroutine sub(a,z)
  integer :: a,x
  real    :: z
  
  x = ibits(a, 13, 1)
  z = real(x)
end subroutine sub

program main
  integer :: a
  real    :: z
  
  a = 8192_4

  call sub(a,z)
  
  if(z .eq. 1.0_4) then
     write(6,*) 'OK'
  else
     write(6,*) 'NG'
  end if
end program main
