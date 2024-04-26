module m1
contains
subroutine s2(k)
real(8),intent(out)::k
associate(p=>k)
 p=1.0
end associate
end subroutine
subroutine s1
real(8)::k
k=2
call s2(k)
if (k/=1.)print *,101
end subroutine
end
use m1
call s1
print *,'pass'
end


