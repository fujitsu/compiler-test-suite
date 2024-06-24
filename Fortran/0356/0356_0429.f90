module mymod
  real(8) xx,yy
end module

program main
  use mymod
  real(8) dx1(10)/1,8,2,3,7,6,5,4,1,1/
  real(8) dx2(10)/1,2,3,4,8,7,6,5,1,9/
  call sub(dx1,dx2,10)
  if (xx.ne.8 .or. yy.ne.9) then
     write(6,*) "NG",xx,yy
  else
     write(6,*) "ok"
  endif
end program

subroutine sub(dx1,dx2,n)
  use mymod
  real(8) dx1(n),dx2(n),TMP
  xx = 0
  yy = 0
  do j = 1, n
     TMP = dx1(j)
     xx = max(xx, TMP)
     TMP = dx2(j)
     yy = max(yy, TMP)
  end do
  return
end subroutine sub