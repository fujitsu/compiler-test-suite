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
            TYPE(ty), INTENT(INOUT):: dmy(:)
              if (loc(dmy%ii)==0 ) return
              write(1,*)1000,dmy%ii
        END SUBROUTINE destructor

END MODULE mod1

PROGRAM MAIN
    USE mod1

    TYPE(ty), ALLOCATABLE :: ty_rlt(:)
    TYPE(ty) :: foo(2)=ty(100)
write(1,*) 2000
    ty_rlt = Foo 
rewind 1
read(1,*) k
if (k/=2000) print *,2000
read(1,*,end=100) k1,k2,k3
if (any([k1,k2,k3]/=[1000,10,10])) print *,200,k1,k2,k3
100 print *,'pass'
END PROGRAM MAIN
