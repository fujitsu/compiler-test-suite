  module mod
        type TAG
        integer,pointer:: p(:)
        integer,pointer:: q(:)
        end type
        end
        subroutine tt(s,n)
        use mod
        type(TAG) s(n)
        call sub(s(2)%p(:), s(n)%q(:))
        end
use mod
        type(TAG) s(2)
allocate(s(2)%p(2),s(2)%q(2),source=1)
call tt(s,2)
print *,'OK'
        end
subroutine sub(a,b)
integer:: a(*),b(*)
if (any(a(:2)/=1)) print *,1
if (any(b(:2)/=1)) print *,2
end

