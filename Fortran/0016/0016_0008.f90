  module mod
        type TAG
        integer,pointer:: p(:)
        integer,pointer:: q(:)
        end type
contains
        subroutine tt(s,n)
        type(TAG),pointer:: s(:)
        call sub(s(2)%p, s(n)%q)
        end
        end
use mod
        type(TAG),pointer:: s(:)
allocate( s(2) )
allocate(s(2)%p(-2),s(2)%q(-2),source=1)
call tt(s,2)
print *,'OK'
        end
subroutine sub(a,b)
integer:: a(*),b(*)
end

