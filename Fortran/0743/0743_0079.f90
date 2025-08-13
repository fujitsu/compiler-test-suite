        subroutine sub
        REAL,ALLOCATABLE,TARGET :: x(:)
        POINTER p(:)
        ALLOCATE(x(10))
        p => x
        write(45,*)SIZE(p)
        END
        call sub
        print *,'pass'
        end
        subroutine subxx
        REAL,ALLOCATABLE,TARGET :: x(:)
        POINTER p(:)
        p => x
        ALLOCATE(x(10))
        write(45,*)SIZE(p)
        END
