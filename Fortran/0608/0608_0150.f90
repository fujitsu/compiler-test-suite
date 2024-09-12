MODULE mod1
INTEGER :: counter = 0
TYPE ty
 INTEGER :: ii = 10
 CONTAINS
  FINAL::final_ty
END TYPE ty

TYPE ty1
 INTEGER :: jj = 20
 TYPE(ty) :: cmp_ty
 CONTAINS
 FINAL::final_ty1
 FINAL::final_scl_ty1
END TYPE ty1

TYPE ty2
 INTEGER::kk = 30
 CONTAINS
 FINAL::final_ty2
END TYPE ty2

TYPE, EXTENDS(ty2)::ty3
 INTEGER :: ll = 40
 TYPE(ty1)  :: cmp_ty1(2)
 CONTAINS
 FINAL::final_ty3
END TYPE ty3

CONTAINS
    SUBROUTINE final_ty(dmy)
        TYPE(ty)::dmy
        counter = counter + 1
        IF ( dmy%ii .EQ. (100*counter) ) THEN
           PRINT*, counter,' 1st-destructor call PASS ', dmy%ii
        ELSE
           PRINT*, counter,' 1st-destructor call FAIL ', dmy%ii
        END IF
    END SUBROUTINE


    SUBROUTINE final_scl_ty1(dmy)
        TYPE(ty1), INTENT(INOUT)::dmy
        counter = counter + 1
        IF ( dmy%jj .EQ. (100*counter) ) THEN
           PRINT*, counter,' 2nd-destructor call PASS ', dmy%jj
        ELSE
           PRINT*, counter,' 2nd-destructor call FAIL ', dmy%jj
        END IF
    END SUBROUTINE

    SUBROUTINE final_ty1(dmy)
        TYPE(ty1)::dmy(:, :)
        counter = counter + 1
        IF ( dmy(1, 1)%jj .EQ. (100*counter) ) THEN
           PRINT*, counter,' 3rd-destructor call PASS ', dmy(1, 1)%jj
        ELSE
           PRINT*, counter,' 3rd-destructor call FAIL ', dmy(1, 1)%jj
        END IF
    END SUBROUTINE
    SUBROUTINE final_ty2(dmy)
        TYPE(ty2)::dmy
        counter = counter + 1
        IF ( dmy%kk .EQ. (100*counter) ) THEN
           PRINT*, counter,' 4th-destructor call PASS ', dmy%kk
        ELSE
           PRINT*, counter,' 4th-destructor call FAIL ', dmy%kk
        END IF
    END SUBROUTINE
    SUBROUTINE final_ty3(dmy)
        TYPE(ty3)::dmy
        counter = counter + 1
        IF ( dmy%ll .EQ. (100*counter) ) THEN
           PRINT*, counter,' 5th-destructor call PASS ', dmy%ll
        ELSE
           PRINT*, counter,' 5th-destructor call FAIL ', dmy%ll
        END IF
    END SUBROUTINE
END MODULE

PROGRAM main
 use mod1
 INTEGER :: i = 2, j = 3
 TYPE(ty) :: ty_obj
 TYPE(ty1) :: ty1_obj(2, 2)
 INTERFACE
    SUBROUTINE FOO(dmy1, dmy2, dmy3)
        IMPORT ty, ty1, ty3
        TYPE(ty), INTENT(OUT) :: dmy1
        TYPE(ty1), OPTIONAL, INTENT(OUT) :: dmy2(:,:)
        TYPE(ty3), OPTIONAL, INTENT(OUT) :: dmy3(:)
    END SUBROUTINE
 END INTERFACE
 ty_obj%ii = 100
 ty1_obj%jj = 200
 ty1_obj(2, 1)%cmp_ty%ii = 300
 ty1_obj(2, 2)%cmp_ty%ii = 400

 CALL FOO(dmy2 =  ty1_obj(i:i:1, 1:2:j-i), dmy1 = ty_obj)
END PROGRAM

SUBROUTINE FOO(dmy1, dmy2, dmy3)
  use mod1
  TYPE(ty), INTENT(OUT):: dmy1
  TYPE(ty1), OPTIONAL, INTENT(OUT):: dmy2(:,:)
  TYPE(ty3), OPTIONAL, INTENT(OUT) :: dmy3(:)

  dmy1%ii = 1
  IF(PRESENT(dmy2)) dmy2(1, 1)%jj = 2
  IF(PRESENT(dmy3)) dmy3(1)%ll = 3
  ENTRY FOO1(dmy3)
  IF(PRESENT(dmy3)) dmy3(1)%ll = 4
END SUBROUTINE
