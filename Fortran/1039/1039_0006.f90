module m
integer   i,j,k
data i/1/
end
use m
if (i/=1)write(6,*) "NG"
print *,'pass'
end
