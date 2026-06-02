MODULE mod1
IMPLICIT NONE
    TYPE base
    integer :: kk = 130
    contains
    FINAL :: f1_base
    end type
    TYPE t0
    INTEGER :: jj = 120
    type(base) :: cmp_base
    !integer,pointer :: ptr
    CONTAINS
         FINAL::dest_arr
         FINAL::dest_scl
    END TYPE

    TYPE,extends(t0) :: ty
    INTEGER :: ii = 10
    type(t0) :: cmp_t0(5)
    !integer,pointer :: ptr
    CONTAINS
        FINAL::f1_arr_ty
    END TYPE

    CONTAINS
       SUBROUTINE dest_arr(dmy)
        TYPE(t0):: dmy(:)
        write(9,*),'call of t0 ary', dmy%jj
!print '(z16.16)',loc(dmy(1)%jj)
        END SUBROUTINE

        SUBROUTINE f1_arr_ty(dmy)
        TYPE(ty):: dmy(:)
        write(9,*),'call of ty ary', dmy%ii
        END SUBROUTINE

        SUBROUTINE dest_scl(dmy)
        TYPE(t0):: dmy
        write(9,*),'call of t0 scl', dmy%jj
        END SUBROUTINE

        SUBROUTINE f1_base(dmy)
        TYPE(base):: dmy
        write(9,*),'call of f1 base', dmy%kk
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0
    !TYPE(ty) :: ty_obj(2)
    type(ty),pointer :: ty_obj(:)
    allocate(ty_obj(2))
    ty_obj(1)%ii=20
    ty_obj(2)%ii=30
    ty_obj(1)%jj=40
    ty_obj(2)%jj=50
!print '("ty_obj(1):",z16.16)',loc(ty_obj(1)%cmp_t0(1)%jj)
!print '("ty_obj(2):",z16.16)',loc(ty_obj(2)%cmp_t0(1)%jj)
!print *,                          ty_obj(1)%cmp_t0(1)%jj
!print *,                          ty_obj(2)%cmp_t0(1)%jj
    res = Foo(ty_obj)
print *,'sngg222p : pass'
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
            class(t0), INTENT(OUT):: ty_dmy(2)    !!!!!!!!!!!!!!!!!!
select type(ty_dmy)
type is (ty)
            ty_dmy%ii =10
            FOO = ty_dmy(1)%ii
end select
         END FUNCTION
END PROGRAM
