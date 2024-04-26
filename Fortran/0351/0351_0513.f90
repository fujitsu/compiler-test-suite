subroutine sub(a, b, z, f)
  integer*8,dimension(1:10) :: a,b
  real*8,dimension(1:10)    :: z
  real*8 f
  integer*8 tmp
  do i = 1, 10
     tmp = 0
     if (f .eq. 1.0) then
        tmp = a(i) + b(i)
     end if
     z(i) = real(ibits(tmp, 3, 1))
  end do
end subroutine sub

program main
  integer*8,dimension(1:10) :: a = 4_8
  integer*8,dimension(1:10) :: b = 4_8
  real*8,dimension(1:10)    :: z = 0.0
  real*8 f
  f = 1.0
  call sub(a, b, z, f)
  do i = 1, 10
     if(z(i) .eq. 1.0_8) then
        write(6, *) 'OK'
     else
        write(6, *) z(i)
     end if
  end do
end program main
