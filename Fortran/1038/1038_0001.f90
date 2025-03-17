module m1
  integer i1
end
call s1
call s2
print *,'pass'
end
subroutine s1
use m1
i1=i1+1
end
subroutine s2
use m1
i1=i1+1
end
