module m1
  integer i1,i2
end
module m2
  integer j1,j2
end
call s1
call s2
print *,'pass'
end
subroutine s1
use m1
use m2
i1=i1+1
j1=j1+1
end
subroutine s2
use m1
use m2
i1=i1+1
j1=j1+1
end
