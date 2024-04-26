MODULE mod1
IMPLICIT NONE
    TYPE ty
        INTEGER :: ii = 10
        CONTAINS
            FINAL::destructor
    END TYPE ty

    CONTAINS
        SUBROUTINE destructor( dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy
              write(1,*)1000,dmy%ii
        END SUBROUTINE destructor

END MODULE mod1

PROGRAM MAIN
    USE mod1

    TYPE(ty), ALLOCATABLE :: ty_rlt
    TYPE(ty) :: foo=ty(100)
    ALLOCATE(ty_rlt)
    ty_rlt = Foo 
rewind 1
read(1,*) k1,k2
if (any([k1,k2]/=[1000,10])) print *,200,k1,k2

print *,'pass'
END PROGRAM MAIN
