program main
integer b(1:100), x(1:100), d1, d2
volatile a
integer sub
pointer(a,x)
a = loc(b)
do i=1,100
  b(i) = i
enddo
d1 = sum(x)
do i=1,100
  x(i) = sub(x(i),i)
enddo
d2 = sum(x)/2
if (d1 .eq. d2) then
  print *,"ok"
else
  print *,"ng",d1,d2
endif
end program

integer function sub(x,i)
integer x,i
sub = x + i
end function