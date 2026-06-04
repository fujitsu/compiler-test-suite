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

    CONTAINS
       SUBROUTINE dest_arr(dmy)
        TYPE(t0):: dmy(:)
        write(4,*),'call of t0 ary', dmy%jj
        END SUBROUTINE

        SUBROUTINE f1_arr_ty(dmy)
        TYPE(ty):: dmy(:)
        write(4,*),'call of ty ary', dmy%ii
        END SUBROUTINE

        SUBROUTINE dest_scl(dmy)
        TYPE(t0):: dmy
        write(4,*),'call of t0 scl', dmy%jj
        END SUBROUTINE

        SUBROUTINE f1_base(dmy)
        TYPE(base):: dmy
        write(4,*),'call of f1 base', dmy%kk
        END SUBROUTINE
END MODULE

subroutine xxx
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0
    TYPE(ty) :: ty_obj(2)
    ty_obj(1)%ii=20
    ty_obj(2)%ii=30
    ty_obj(1)%jj=40
    ty_obj(2)%jj=50
    res = Foo(ty_obj)
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
            class(ty), INTENT(OUT):: ty_dmy(2)    !!!!!!!!!!!!!!!!!!
            ty_dmy%ii =10
            FOO = ty_dmy(1)%ii
         END FUNCTION
end
PROGRAM MAIN
call xxx
print *,'sngg205p : pass'
END PROGRAM
