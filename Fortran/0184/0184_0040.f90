module m1
 integer:: a(2)= [ (k,k=1,2) ]
 integer:: b(2)
 data (b(n),n=1,2) /2*1/
 integer:: c(2)= [ (m,m=1,2) ]
end
recursive subroutine s1(mm)
use m1
integer::m(mm)
integer(8),save:: k1s,k2s,n1s,n2s,m1s,m2s
k=1  
n=1  
if (mm==1) then
k1s=loc(k)
n1s=loc(n)
m1s=loc(m)
else if (mm==2) then
k2s=loc(k)
n2s=loc(n)
m2s=loc(m)
if (k1s==k2s) print *,1001
if (n1s==n2s) print *,1002
if (m1s==m2s) print *,1003
endif
mm=mm+1
if (mm<3) then
  call s1(mm)
endif
end
m=1
call s1(m)
print *,'pass'
end
