MODULE mod1
IMPLICIT NONE
    TYPE base
    integer :: kk = 30
    contains
    FINAL :: f1_base
    end type
    TYPE t0
    INTEGER :: jj = 20
    type(base) :: cmp_base
    CONTAINS
         FINAL::dest_arr
         FINAL::dest_scl
    END TYPE

    TYPE,extends(t0) :: ty
    INTEGER :: ii = 10
    type(t0) :: cmp_t0(5)
    CONTAINS
        FINAL::f1_arr_ty
    END TYPE
    integer::k1=0,k2=0,k3=0,k4=0

    CONTAINS
       SUBROUTINE dest_arr(dmy)
        TYPE(t0):: dmy(:)
        k1=k1+1
        END SUBROUTINE

        SUBROUTINE f1_arr_ty(dmy)
        TYPE(ty):: dmy(:)
        k2=k2+1
        END SUBROUTINE

        SUBROUTINE dest_scl(dmy)
        TYPE(t0):: dmy
        k3=k3+1
        END SUBROUTINE

        SUBROUTINE f1_base(dmy)
        TYPE(base):: dmy
        k4=k4+1
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0
    type(ty),pointer :: ty_obj(:)
    allocate(ty_obj(2))
    ty_obj(1)%ii=20
    ty_obj(2)%ii=30
    ty_obj(1)%jj=40
    ty_obj(2)%jj=50
    res = Foo(ty_obj)   
    if (k1/=2) print *,501
    if (k2/=1) print *,502
    if (k3/=2) print *,503
    if (k4/=12) print *,504
    print *,'pass'
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
            class(ty), INTENT(OUT):: ty_dmy(2)
            ty_dmy%ii =10
            FOO = ty_dmy(1)%ii
         END FUNCTION
END PROGRAM

