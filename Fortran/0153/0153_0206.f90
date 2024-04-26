module m1
  integer:: x1,x2
public  x1,x2
end
module m11
use m1,only:y1=>x1,x2
public  y1,x2
end
module m2
use m1
use m11
public  y1,x2,x1
end
subroutine s1
use m1
use m11
use m2
x2=2
end
call s1
print *,'pass'
end
