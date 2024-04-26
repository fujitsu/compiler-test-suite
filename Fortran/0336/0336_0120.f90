subroutine s02(r,N)
integer N
real*8 r(N),s(N)
do i=1,N
  s(i)=sqrt(exp(r(i)))
end do
if ((s(1)==s(N/2)) .and. (s(N/2+1)==s(N))) then
  print *,"ok"
else
  print *,"ng"
endif
end subroutine s02

integer,parameter :: N=1000
real*8 r(N)
r(1:N/2)=1.0
r(N/2+1:N)=2.0
call s02(r,N)
end
