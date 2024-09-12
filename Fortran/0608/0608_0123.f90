MODULE mod1
IMPLICIT NONE
    INTEGER(kind=8):: a = 2, b = 5, c = 3, counter = 0
    TYPE ty
    INTEGER(kind=8) :: ii = 10
    CONTAINS
         FINAL::dest_ty
    END TYPE

    TYPE ty1
        INTEGER(kind=8) :: kk = 20
        TYPE(ty):: ty_cmp(2)
    CONTAINS
        FINAL::dest_ty1
    END TYPE

    CONTAINS
        PURE SUBROUTINE dest_ty(dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy
        END SUBROUTINE
        PURE SUBROUTINE dest_ty1( dmy )
            IMPLICIT NONE
            TYPE(ty1), INTENT(INOUT):: dmy
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty):: ty_obj(10)
    INTERFACE ASSIGNMENT(=)
        ELEMENTAL SUBROUTINE assin(L, R)
        IMPORT ty
        TYPE(ty), INTENT(OUT) :: L
        TYPE(ty), INTENT(IN) :: R
        END
    END INTERFACE
    ty_obj(5:10:3)%ii = 300
    ty_obj(2)%ii = 100
    ty_obj(4)%ii = 200
    ty_obj(2:5:2) = ty_obj(5:10:3)
    PRINT*,'After assinment', ty_obj(2)%ii, ty_obj(4)%ii
 END PROGRAM

ELEMENTAL SUBROUTINE assin(L, R)
 use mod1
 TYPE(ty), INTENT(OUT) :: L
 TYPE(ty), INTENT(IN) :: R
 L%ii = R%ii *1000
END
