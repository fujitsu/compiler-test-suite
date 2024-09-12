module m1
pointer(ptr,ia)
end
module m2
pointer(wtr,ka)
end

subroutine s1
use m1,only:p2=>ptr
use m1,only:ptr
use m1,only:ia
end
subroutine s2
use m2,only:ka
use m2,only:wtr
use m2,only:w2=>wtr
end
print *,'pass'
end
