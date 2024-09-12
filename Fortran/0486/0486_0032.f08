integer,contiguous,pointer :: ptr(:,:)
        allocate(ptr(4,5))
        call sub(ptr(:,:))
        call sub(ptr)
        call sub2(ptr(:,:))
        call sub2(ptr)
print *,'pass'
        contains
        subroutine sub(dmy)
        integer :: dmy(:,:)
        end subroutine
        subroutine sub2(dmy)
        integer,contiguous :: dmy(:,:)
        end subroutine
        end
