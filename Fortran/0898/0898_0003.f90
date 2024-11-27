module m1
type ty
complex :: ptr(3)
end type ty

type (ty),protected,target:: tar
end module m1
use m1
        contains
        subroutine sub(ptr)
        real,pointer,intent(in)::ptr(:)
print*,associated(ptr)
        end subroutine
        subroutine s2
        call sub(tar%ptr%re)
    end subroutine
            end
