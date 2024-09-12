integer,allocatable  :: c
ALLOCATE(c) 
call sub(NULL(c))
        contains
        pure subroutine sub(x)
        integer,allocatable,INTENT(IN) :: x
        call sub2(x)
        end subroutine
        pure subroutine sub2(dmy)
        integer,allocatable,INTENT(IN) :: dmy
        end subroutine
end
