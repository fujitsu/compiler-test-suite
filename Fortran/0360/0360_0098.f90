module mod
  real*4 ,a,b,c
  complex*8,dimension(7,7)::c05
  complex d05
end module mod

program main
  use mod
  integer x

100 format(Z16)
  d05=(1.0,1.0)
  x = 49

  call sub(c05, x, d05)
  write(6,*) c05
  print *,'pass'
end program main


subroutine sub (c, n, beta)
  implicit none
  integer n, i
  complex c (n), beta
  do i = 1, n
      c (i) = beta
  end do
  return
end
