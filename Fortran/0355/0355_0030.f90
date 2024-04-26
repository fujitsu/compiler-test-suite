subroutine sub(xx,yy,zz,aa,bb)
  integer i,bb
  real(kind=8) aa
  real(kind=8),dimension(5000)::xx,yy,zz
  real(kind=8) ww

  ww = 0
  do i=1,bb
     ww=100
     xx(i) = yy(i) + zz(i)
  end do
  aa = ww
end subroutine sub

program main
  integer i
  real(kind=8) aa
  real(kind=8),dimension(5000)::xx,yy,zz

  do i=1,5000
     yy(i) = 1.0
     zz(i) = 1.0
  end do

  call sub (xx,yy,zz,aa,5000)

  if (xx(5000) .ne. 2.0) then
     print *, "NG"
  else
     print *, "OK"
  endif
end program main
