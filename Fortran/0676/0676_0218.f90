program main
real b(1:10), x(1:10)
real c(1:10,1:3)
volatile a
pointer(a,x)
a = loc(b)
do i=1,10
  b(i) = real(i)
enddo
c = spread(x,2,3)
if (int(sum(c(1:10,2))) == 55) then
  print *,"ok"
else
  print *,"ng",c(1:10,2)
endif
end program
