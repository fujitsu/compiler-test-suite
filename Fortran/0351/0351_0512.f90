subroutine sub(a, z)
  integer*4,dimension(1:10) :: a
  real*4,dimension(1:10)    :: z
  
  do i = 1, 10
     z(i) = real(ibits(a(i), 2, 1))
  end do
end subroutine sub

program main
  integer*4,dimension(1:10) :: a = 8_4
  real*4,dimension(1:10)    :: z = 0.0
  
  call sub(a, z)
  
  do i = 1, 10
     if(z(i) .eq. 0.0_4) then
        write(6, *) 'OK'
     else
        write(6, *) 'NG'
     end if
  end do
end program main

