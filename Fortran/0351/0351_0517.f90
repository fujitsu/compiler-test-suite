subroutine sub(a,z)
  integer :: a
  real    :: z
  
  z = real(dble(ibits(a, 13, 1)))
end subroutine sub

program main
  integer :: a
  real    :: z
  
  a = 8192.0_4

  call sub(a,z)
  
  if(z .eq. 1.0_4) then
     write(6,*) 'OK'
  else
     write(6,*) 'NG'
  end if
end program main
