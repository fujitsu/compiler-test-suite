implicit none
integer(8)::i
real*8 ::a(10)=0
real*8 b(10)/10*2./
integer*4 mask(10)/10*0/
do concurrent(i=1:9,mask(i)==0)
a(i) = b(i) + 3.
mask(i+1) = 1
end do
if (any(a(:9)/=5)) print *,100,a
if (   (a(10)/=0)) print *,101,a
if (any(mask/=[0,1,1,1,1,1,1,1,1,1])) print *,102,mask
print *,'pass'
end
