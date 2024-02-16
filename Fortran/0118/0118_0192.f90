implicit none
integer(8)::i
real*8 a(10000)
real*8 b(10000)/10000*2./
real*8 c(10000)
do concurrent(i=1:10000)
a(i) = b(i) + 3.
end do
do i=1,10000
c(i) = a(i)
end do
print *,merge("OK","NG",all(c==5.0))
end
