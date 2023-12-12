program main
integer,parameter::N=100
real(kind=8),dimension(1:N) :: ary1,ary2
real(kind=8) d

ary1=1._8
ary2=2._8

d = 0._8
do i=1,N
  d=d+ary1(i)*ary2(i)
enddo

if (int(d,kind=4)==200_4) then
  print *,"ok"
else
  print *,"ng",d
endif
end program
