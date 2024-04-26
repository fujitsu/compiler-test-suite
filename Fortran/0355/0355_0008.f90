program main
  implicit none
  real*8,dimension(5000)::ra
  real*8,dimension(5000)::rb
  real*8,dimension(5000)::rc
  integer i

  ra = 0.0
  rc = 1.0
  
  do i=1,10
     call sub(ra,rb,rc,5000)
  end do
  if (rb(5000) .eq. rc(5000)) then
     print *, "OK"
  else
     print *, "NG"
  endif
end program main

subroutine sub(xx,yy,zz,nn)
  implicit none
  real*8,dimension(5000)::xx
  real*8,dimension(5000)::yy
  real*8,dimension(5000)::zz
  integer i,nn
  
  do i=1,nn
     if (xx(i) .ne. 0.0) then
        yy(i) = zz(i) / xx(i)
     else
        yy(i) = zz(i)
     endif
  end do
end subroutine sub
