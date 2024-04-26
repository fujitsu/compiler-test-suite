subroutine sub(a,z)
  integer*4 :: a
  real*8    :: z
  
  z = dble(ibits(a, 12, 1))
end subroutine sub

program main
  integer*4 :: a
  real*8    :: z
  
  a = 4096_4

  call sub(a,z)

  if(z .eq. 1.0) then
     write(6, *) 'OK'
  else
     write(6, *) 'NG'
  end if
end program main
