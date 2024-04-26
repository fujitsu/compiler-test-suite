subroutine sub(a, z, b, d)
  integer*8,dimension(1:10) :: a, b, d
  real*8,dimension(1:10)    :: z
  do i = 1, 10
     d(i) = max(a(i), b(i))
     z(i) = real(ibits(d(i), 3, 1))
  end do
end subroutine sub

program main
  integer*8,dimension(1:10) :: a = 0_8
  integer*8,dimension(1:10) :: b = 8_8
  integer*8,dimension(1:10) :: d = 0
  real*8,dimension(1:10)    :: z = 0.0
  
  call sub(a, z, b, d)
  do i = 1, 10
     if(z(i) .eq. 1.0_8) then
        write(6, *) 'OK'
     else
        write(6, *) 'NG'
     end if
  end do
end program main
