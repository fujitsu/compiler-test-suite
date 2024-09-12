MODULE mod1
IMPLICIT NONE
  TYPE ty0
    INTEGER :: ii = 10
    CONTAINS
      FINAL::ty0_scalar_dest
      FINAL::ty0_array_dest
  END TYPE ty0

  TYPE ty1
    INTEGER :: jj = 20
    TYPE(ty0):: ty0_cmp
    CONTAINS
      FINAL::ty1_scalar_dest
      FINAL::ty1_array_dest
  END TYPE ty1

  CONTAINS
    SUBROUTINE ty0_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy
      PRINT*,' ty0_scalar_destructor CALL ',dmy%ii
    END SUBROUTINE ty0_scalar_dest

    SUBROUTINE ty0_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy(:)
      PRINT*,' ty0_array_destructor CALL ',dmy%ii
    END SUBROUTINE ty0_array_dest

    SUBROUTINE ty1_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy
      PRINT*,' ty1_scalar_destructor CALL ',dmy%jj
    END SUBROUTINE ty1_scalar_dest

    SUBROUTINE ty1_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy(:)
      PRINT*,' ty1_array_destructor CALL ',dmy%jj
    END SUBROUTINE ty1_array_dest
END MODULE mod1

PROGRAM MAIN
  USE mod1
  IMPLICIT NONE
  TYPE(ty1) :: ty1_obj(0:4), res
  INTEGER :: key = 400, low = 0, high = 4

  ty1_obj(0)%ty0_cmp%ii = 200
  ty1_obj(1)%ty0_cmp%ii = 400
  ty1_obj(2)%ty0_cmp%ii = 600
  ty1_obj(3)%ty0_cmp%ii = 800
  ty1_obj(4)%ty0_cmp%ii = 900

  res = Binsrc(ty1_obj, key, low, high)
  IF(res%ty0_cmp%ii == 400) THEN
    PRINT*,' PASS', res
  ELSE
   PRINT*,' FAIL',res
  END IF

  CONTAINS
    RECURSIVE FUNCTION Binsrc(arr, key, low, high) RESULT(ty1_res)
      IMPLICIT NONE
      TYPE(ty1) :: ty1_res
      TYPE(ty1) :: arr(0:4)
      INTEGER, INTENT(IN) :: key
      INTEGER, INTENT(IN) :: low
      INTEGER, INTENT(IN) :: high
      INTEGER :: mid = -1
      IF(low > high) THEN
        ty1_res = (ty1(-1, ty0_cmp =  ty0(-1)))
        RETURN
      END IF

      mid = (low + high)/2
      IF(key == arr(mid)%ty0_cmp%ii ) THEN
         ty1_res = arr(mid)
         RETURN
      END IF

      IF(key < arr(mid)%ty0_cmp%ii) THEN
        ty1_res =  Binsrc(arr, key, low, mid - 1 )
      ELSE
        ty1_res = Binsrc(arr, key, mid + 1, high)
      END IF
    END FUNCTION
END PROGRAM MAIN
