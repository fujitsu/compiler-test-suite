subroutine sub(a, z, c)
  integer*8,dimension(1:10) :: a,c
  real*8,dimension(1:10)    :: z
  do i = 1, 10
     c(i) = a(i)*8_8
     z(i) = real(ibits(c(i), 3, 1))
  end do
end subroutine sub

program main
  integer*8,dimension(1:10) :: a = 1_8
  integer*8,dimension(1:10) :: c = 0_8
  real*8,dimension(1:10)    :: z = 0.0

  call sub(a, z, c)
  do i = 1, 10
     if(z(i) .eq. 1.0_8) then
        write(6, *) 'OK'
     else
        write(6, *) 'NG'
     end if
  end do
end program main
