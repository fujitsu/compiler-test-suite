MODULE mod1
IMPLICIT NONE
    INTEGER(kind=8):: a = 2, b = 5, c = 3, counter = 0
    TYPE ty
    INTEGER(kind=8) :: ii = 10
    CONTAINS
         FINAL::dest_ty
         FINAL::dest_ty_1D_Arr
    END TYPE

    TYPE ty1
        INTEGER(kind=8) :: kk = 20
        TYPE(ty):: ty_cmp(2)
    CONTAINS
        FINAL::dest_ty1
        FINAL::dest_ty1_1D_Arr
    END TYPE
    INTERFACE ASSIGNMENT(=)
       ELEMENTAL SUBROUTINE assinty(L, R)
          IMPORT ty
          TYPE(ty), INTENT(OUT) :: L
          TYPE(ty), INTENT(IN) :: R
        END SUBROUTINE
       SUBROUTINE assinty1(L, R)
          IMPORT ty1
          TYPE(ty1), INTENT(OUT) :: L
          TYPE(ty1), INTENT(IN) :: R
        END SUBROUTINE
    END INTERFACE

    CONTAINS
        PURE SUBROUTINE dest_ty(dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy
        END SUBROUTINE
        PURE SUBROUTINE dest_ty_1D_Arr(dmy )
            IMPLICIT NONE
            TYPE(ty), INTENT(INOUT):: dmy(:)
        END SUBROUTINE
        PURE SUBROUTINE dest_ty1( dmy )
            IMPLICIT NONE
            TYPE(ty1), INTENT(INOUT):: dmy
        END SUBROUTINE
        PURE SUBROUTINE dest_ty1_1D_Arr( dmy )
            IMPLICIT NONE
            TYPE(ty1), INTENT(INOUT):: dmy(:)
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty1):: ty1_obj(3)
    ty1_obj(2)%kk = 100
    ty1_obj(3)%kk = 500
    ty1_obj(2)%ty_cmp(1)%ii = 200
    ty1_obj(2)%ty_cmp(2)%ii = 200
    ty1_obj(3)%ty_cmp(1)%ii = 500
    ty1_obj(3)%ty_cmp(2)%ii = 500
    ty1_obj(2) = ty1_obj(3)
    PRINT*,'After assinment', ty1_obj(2)%kk, ty1_obj(2)%ty_cmp(1)%ii, ty1_obj(2)%ty_cmp(2)%ii
 END PROGRAM

SUBROUTINE assinty1(L, R)
  use mod1
  TYPE(ty1), INTENT(OUT) :: L
  TYPE(ty1), INTENT(IN) :: R
  L%kk = R%kk
  L%ty_cmp(1)%ii = 300
  L%ty_cmp(2)%ii = 400
  L%ty_cmp = R%ty_cmp
END SUBROUTINE

ELEMENTAL SUBROUTINE assinty(L, R)
 use mod1
 TYPE(ty), INTENT(OUT) :: L
 TYPE(ty), INTENT(IN) :: R
 L%ii = R%ii*100
END SUBROUTINE
