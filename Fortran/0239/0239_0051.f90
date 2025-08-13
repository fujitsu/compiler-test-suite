module  mod1
IMPLICIT NONE
    TYPE base
    integer :: kk = 30
    end type
    TYPE t0
    INTEGER :: jj = 20
    type(base) :: cmp_base
    CONTAINS
         FINAL::dest_arr
    END TYPE

    TYPE,extends(t0) :: ty
    INTEGER :: ii = 10
    type(t0) :: cmp_t0(5)
    CONTAINS
        FINAL::f1_scr_ty
    END TYPE

    CONTAINS
       SUBROUTINE dest_arr(dmy)
        TYPE(t0):: dmy(:)
        write(4,*) 101,dmy%jj
        END SUBROUTINE

        SUBROUTINE f1_scr_ty(dmy)
        TYPE(ty):: dmy
        write(4,*) 102,dmy%ii
        END SUBROUTINE

END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0
    type(ty),pointer :: ty_obj
    allocate(ty_obj)
    ty_obj%ii=20
    ty_obj%ii=30
    ty_obj%jj=40
    ty_obj%jj=50
    res = Foo(ty_obj)
    call chk
    print *,'pass'
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
            class(ty), INTENT(OUT):: ty_dmy
            ty_dmy%ii =10
            FOO = ty_dmy%ii
         END FUNCTION
END PROGRAM
subroutine chk
rewind 4
read(4,*) k1,k2
if (any([k1,k2]/=[102,30])) print *,301
read(4,*) k1,k2 ,k3,k4,k5,k6
if (any([k1,k2,k3,k4,k5,k6]/=[101,20,20,20,20,20])) print *,302
end
