  module mod
        type TAG
        integer,pointer:: p(:)
        integer,pointer:: q(:)
        end type
contains
elemental subroutine sub(a,b,k)
integer,intent(in):: a,b
integer,intent(out):: k
k=0
if (    a/=1)k=1
if (    b/=1)k=1
end
        end
        subroutine tt(s)
        use mod
        type(TAG) s
integer:: k(2)
        call sub(s%p, s%q,k)
if (any(k/=0) ) print *,1001
        end
use mod
        type(TAG) s
allocate(s%p(2),s%q(2),source=1)
call tt(s)
print *,'pass'
        end

