module mymod
  real(4) xx,yy
end module

program main
  use mymod
  real(4) dx1(20)/1,8,2,3,7,6,5,4,12*1/
  real(4) dx2(20)/1,2,3,4,8,7,6,5,10*1,1,9/
  call sub(dx1,dx2,20)
  if (xx.ne.8 .or. yy.ne.9) then
     write(6,*) "NG",xx,yy
  else
     write(6,*) "ok"
  endif
end program

subroutine sub(dx1,dx2,n)
  use mymod
  real(4) dx1(n),dx2(n),TMP
  xx = 0
  yy = 0
  do j = 1, n
     TMP = dx1(j)
     if (TMP > xx) xx = TMP
     TMP = dx2(j)
     if (TMP > yy) yy = TMP
  end do
  call check(TMP)
  return
end subroutine sub

subroutine check(TMP)
real*4 TMP
if (TMP .ne.9) then
   write(6,*) "TMP ",TMP
endif
return
end subroutine check
