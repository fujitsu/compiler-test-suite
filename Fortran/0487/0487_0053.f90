module mod
integer,pointer:: p (:,:)
end

subroutine s(k)
use mod
allocate( p(2:3,4:k) )
p(:,:)=1

if (any(p/=1)) print *,101
end
call s(6)
print *,'pass'
end
