  module mod
        type TAG
        integer,pointer,contiguous:: p(:)
        integer,pointer,contiguous:: q(:)
        end type
contains
        subroutine tt(s,n)
        type(TAG),pointer:: s(:)
        call sub(s(2)%p, s(n)%q)
        call sub(s(2)%p(:), s(n)%q(:))
        end
        end
use mod
        type(TAG),pointer:: s(:)
allocate( s(2) )
allocate(s(2)%p(2),s(2)%q(2),source=1)
call tt(s,2)
print *,'OK'
        end
subroutine sub(a,b)
integer:: a(*),b(*)
if (any(a(:2)/=1)) print *,1
if (any(b(:2)/=1)) print *,2
end

