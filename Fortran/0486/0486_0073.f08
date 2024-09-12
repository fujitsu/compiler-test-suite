  module mod
        type TAG
        integer,pointer:: p(:)
        integer,pointer:: q(:)
        end type
        end
        subroutine tt(s)
        use mod
        type(TAG) s
        integer:: a(2)
        do k=1,size(s%p)
a(k)=s%p(k)+s%q(K) 
        end do
        if (any(a/=2)) print *,201
        end
use mod
        type(TAG) s
allocate(s%p(2),source=1)
allocate(s%q(2),source=1)
call tt(s)
print *,'pass'
        end
subroutine sub(a,b)
integer:: a(*),b(*)
if (any(a(:2)/=1)) print *,1
if (any(b(:2)/=1)) print *,2
end
