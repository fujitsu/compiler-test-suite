subroutine s02(r)
real*4 r(100)
real*8 s(100)
do i=1,100
  s(i)=sqrt(exp(r(i)))
end do
if ((s(1)==s(50)) .and. (s(51)==s(100))) then
  print *,"ok"
else
  print *,"ng"
endif
end subroutine s02

real*4 r(100)
r(1:50)=1.0;r(51:100)=2.0
call s02(r)
end
