module m1
contains
subroutine s1(a,aa)
integer,contiguous::a(:,:)
integer,pointer,contiguous::p(:,:)
contiguous::aa,pp
integer::aa(:,:)
integer,pointer::pp(:,:)
end subroutine
end
use m1
print *,'pass'
end
