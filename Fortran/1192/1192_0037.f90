MODULE mod1
IMPLICIT NONE
    TYPE base
     integer :: kk = 30
    contains
    FINAL :: f1_base
    end type

    TYPE t0
     INTEGER :: jj = 20
    CONTAINS
     !    FINAL::dest_arr
     !   FINAL::dest_scl
    END TYPE

    TYPE,extends(t0) :: ty
     INTEGER :: ii = 10
     type(base) :: cmp_t0(5)
    CONTAINS
        FINAL::f1_arr_ty
    END TYPE
   
    type,extends(ty) :: z
      integer::zz
    end type

    CONTAINS
       SUBROUTINE dest_arr(dmy)
        TYPE(t0):: dmy(:)
        PRINT*,'call of t0 ary', dmy%jj
        END SUBROUTINE

        SUBROUTINE f1_arr_ty(dmy)
        TYPE(ty):: dmy(:)
        PRINT*,'call of ty ary', dmy%ii
        END SUBROUTINE

        SUBROUTINE dest_scl(dmy)
        TYPE(t0):: dmy
        PRINT*,'call of t0 scl', dmy%jj
        END SUBROUTINE

        SUBROUTINE f1_base(dmy)
        TYPE(base):: dmy
        PRINT*,'call of f1 base', dmy%kk
        END SUBROUTINE
END MODULE

subroutine xxx
    USE mod1
    IMPLICIT NONE
    INTEGER :: res = 0
    class(t0),allocatable :: ty_obj(:)
    allocate(z:: ty_obj(2))
    select type (ty_obj)
     type is(ty)
    ty_obj(1)%ii=20
    ty_obj(2)%ii=30
    ty_obj(1)%jj=40
    ty_obj(2)%jj=50
    end select
    res = Foo(ty_obj)   
    CONTAINS
        INTEGER FUNCTION Foo( ty_dmy )
            class(t0), INTENT(OUT):: ty_dmy(:)    !!!!!!!!!!!!!!!!!!
            FOO=1
         END FUNCTION
end
PROGRAM MAIN
call xxx
print *,'sngg207p : pass'
END PROGRAM

