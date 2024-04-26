module m1
  integer:: x1,x2
end

module m2
use m1,y2=>x2
end

module m3
use m1,only:y2=>x2,y1=>x1
end

subroutine s
use m1
use m2
use m3
x1=10
x2=20
if (x1/=10) print *,1
if (x2/=20) print *,2
if (y1/=10) print *,3
if (y2/=20) print *,4
end

call s
print *,'pass'
end
