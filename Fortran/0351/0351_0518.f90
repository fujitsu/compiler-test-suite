subroutine sub(a,z)
  integer :: a
  real    :: z
  
  z = real(ibits(a, 12, 2))
end subroutine sub

program main
  integer :: a
  real    :: z

  a = 12288_4
  
  call sub(a,z)
  
  if(z .eq. 3.0) then
     write(6,*) 'OK'
  else
     write(6,*) 'NG'
  end if
end program main
