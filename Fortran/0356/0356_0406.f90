
program main
  real(8) xx,yy
  yy = 0
  xx = 0
  call sub(xx,yy)
  if (xx.ne.8 .or. yy.ne.9) then
     write(6,*) "NG ",xx,yy
  else
     write(6,*) "ok"
  endif
end program

subroutine sub(xx,yy)
  real(8) dx1(8)/1,8,2,3,7,6,5,4/
  real(8) dx2(8)/1,2,3,4,9,7,6,5/,TMP,xx,yy
  do j = 1, 8
     TMP = dx1(j)
     if (TMP > xx) xx = TMP
     TMP = dx2(j)
     if (TMP > yy) yy = TMP
  end do
end subroutine sub
