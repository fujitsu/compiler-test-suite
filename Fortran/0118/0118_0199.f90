implicit none
integer(8)::i
real*8 a(10000)
real*8 b(10000)/10000*2./
integer*4 mask(10001)/10001*0/
do concurrent(i=1:10000,mask(i)==0)
a(i) = b(i) + 3.
mask(i+1) = mask(i) + 1
end do
print *,merge("OK","NG",all(a==5.0))
end
