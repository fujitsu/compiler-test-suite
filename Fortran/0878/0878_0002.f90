module m1
contains
subroutine s1(k)
intent(out)::k
k=k+1
end subroutine
end
use m1
k=1
call s1(k)
print *,k
end
