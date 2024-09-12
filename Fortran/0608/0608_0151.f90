MODULE mod1
 IMPLICIT NONE
 INTEGER :: flag = 0, counter = 0
 TYPE ty
   INTEGER :: ii = 10
   CONTAINS
     FINAL::final_ty
 END TYPE ty

 TYPE ty1
   INTEGER :: jj = 20
   TYPE(ty) :: ty_cmp
   CONTAINS
     FINAL::final_ty1
     FINAL::final_scl_ty1
 END TYPE ty1

CONTAINS
    SUBROUTINE final_ty(dmy)
        TYPE(ty)::dmy
        counter = counter + 1
        IF ( dmy%ii .EQ. (100*counter) ) THEN
            PRINT*, counter,'1st-destructor call PASS ', dmy
        ELSE
            PRINT*, counter,'1st-destructor call FAIL ', dmy
        END IF
    END SUBROUTINE

    SUBROUTINE final_scl_ty1(dmy)
        TYPE(ty1)::dmy
        counter = counter + 1
        IF ( dmy%jj .EQ. (100*counter) ) THEN
           PRINT*, counter,'2nd-destructor call PASS ', dmy
        ELSE
           PRINT*, counter,'2nd-destructor call FAIL ', dmy
        END IF
    END SUBROUTINE

    SUBROUTINE final_ty1(dmy)
        TYPE(ty1)::dmy(:)
        counter = counter + 1
        IF ( dmy(1)%jj .EQ. (100*counter) ) THEN
           PRINT*, counter,'3rd-destructor call PASS ', dmy(1)%jj,' ', dmy(2)%jj,' ',dmy(3)%jj
           dmy(1)%ty_cmp%ii = 200
           dmy(2)%ty_cmp%ii = 300
           dmy(3)%ty_cmp%ii = 400
        ELSE
           PRINT*, counter,' 3rd-destructor call FAIL ', dmy
        END IF
    END SUBROUTINE
END MODULE

PROGRAM main
 use mod1
 TYPE(ty1), POINTER:: ty1_ptr(:)
 TYPE(ty1), TARGET :: ty1_tar(5)
 INTERFACE
    SUBROUTINE FOO(dmy)
        IMPORT ty1
        TYPE(ty1), INTENT(OUT) :: dmy(:)
    END SUBROUTINE
 END INTERFACE
 ty1_tar(1)%ty_cmp%ii = 100
 ty1_tar(3)%ty_cmp%ii = 100
 ty1_tar(5)%ty_cmp%ii = 100
 ty1_tar(1)%jj = 100
 ty1_tar(3)%jj = 100
 ty1_tar(5)%jj = 100
 ty1_ptr=>ty1_tar(1:5:2)
 CALL FOO(ty1_ptr)
END PROGRAM

SUBROUTINE FOO(dmy)
  use mod1
  TYPE(ty1), INTENT(OUT) :: dmy(:)
  dmy(1)%jj = 50
END SUBROUTINE
