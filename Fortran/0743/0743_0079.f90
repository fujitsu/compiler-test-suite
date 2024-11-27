        subroutine sub
        REAL,ALLOCATABLE,TARGET :: x(:)
        POINTER p(:)
        ALLOCATE(x(10))
        p => x
        write(1,*)SIZE(p)
        END
        call sub
        print *,'pass'
        end
        subroutine subxx
        REAL,ALLOCATABLE,TARGET :: x(:)
        POINTER p(:)
        p => x
        ALLOCATE(x(10))
        write(1,*)SIZE(p)
        END
