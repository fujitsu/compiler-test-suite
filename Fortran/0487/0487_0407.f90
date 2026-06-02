module m1
contains
subroutine  ss(d ,n)
integer,dimension( .. ):: d
if (rank( d )/=2) print *,201
if (n==0) then
if (.not.is_contiguous( d ) ) print *,101
else
if (     is_contiguous( d ) ) print *,102
endif
end
end
subroutine s1
use m1
integer:: a(3,2)=reshape([1,2,3,4,5,6],[3,2])
call ss( a , 0)
call ss( a(::2,:) , 2)
end
call s1
print *,'pass'
end
