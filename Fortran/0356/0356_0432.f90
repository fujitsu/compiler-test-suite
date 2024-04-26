program main
  real(8) xx,yy
  real(8) dx1(8)/8*1/,dx2(8)/8*2/,TMP

  yy = 0
  xx = 0
  do j = 1, 8
     TMP = dx1(j)
     if (TMP > xx) xx = TMP
     TMP = dx2(j)
     if (TMP > yy) yy = TMP
  end do
  if (xx.ne.1 .or. yy.ne.2) then
     write(6,*) "NG ",xx,yy
  else
     write(6,*) "ok"
  endif
end program
