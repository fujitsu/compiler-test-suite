subroutine sub(a, z, d)
  integer*4,dimension(1:10) :: a
  integer*8,dimension(1:10) :: d
  real*8,dimension(1:10)    :: z
  do i = 1, 10
     d(i) = a(i)+2.6_8
     z(i) = real(ibits(d(i), 3, 1))
  end do
end subroutine sub

program main
  integer*4,dimension(1:10) :: a = 6_8
  integer*8,dimension(1:10) :: d = 0_8
  real*8,dimension(1:10)    :: z = 0.0

  call sub(a, z, d)
  do i = 1, 10
     if(z(i) .eq. 1.0_8) then
        write(6, *) 'OK'
     else
        write(6, *) 'NG'
     end if
  end do
end program main
