MODULE mod1
INTEGER :: counter = 0
TYPE ty
 INTEGER, ALLOCATABLE :: ii
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
        TYPE(ty1)::dmy(:)
        counter = counter + 1
        IF ( dmy(1)%jj .EQ. (100*counter) ) THEN
           PRINT*, counter,' 3rd-destructor call PASS ', dmy(1)%jj
        ELSE
           PRINT*, counter,' 3rd-destructor call FAIL ', dmy(1)%jj
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
        TYPE(ty3)::dmy(:)
        counter = counter + 1
        IF ( dmy(1)%ll .EQ. (100*counter) ) THEN
           PRINT*, counter,' 5th-destructor call PASS ', dmy(1)%ll
        ELSE
           PRINT*, counter,' 5th-destructor call FAIL ', dmy(1)%ll
        END IF
    END SUBROUTINE
END MODULE

PROGRAM main
 use mod1
 INTEGER :: i = 2, j = 3
 TYPE(ty3), POINTER :: ty3_obj(:)
 INTERFACE
    SUBROUTINE FOO(dmy, dmy1)
        IMPORT ty1, ty3
        TYPE(ty3), INTENT(OUT) :: dmy
        TYPE(ty1), INTENT(OUT) :: dmy1
    END SUBROUTINE
 END INTERFACE
 ALLOCATE(ty3_obj(4))
 ALLOCATE(ty3_obj(2)%cmp_ty1(1)%cmp_ty%ii)
 ALLOCATE(ty3_obj(2)%cmp_ty1(2)%cmp_ty%ii)
 ALLOCATE(ty3_obj(3)%cmp_ty1(1)%cmp_ty%ii)
 ALLOCATE(ty3_obj(3)%cmp_ty1(2)%cmp_ty%ii)

 ty3_obj(2)%ll = 100
 ty3_obj(2)%cmp_ty1%jj = 200
 ty3_obj(2)%cmp_ty1(1)%cmp_ty%ii = 300
 ty3_obj(2)%cmp_ty1(2)%cmp_ty%ii = 400
 ty3_obj(2)%kk = 500
 
 ty3_obj(3)%cmp_ty1%jj = 600
 ty3_obj(3)%cmp_ty1(1)%cmp_ty%ii = 700
 ty3_obj(3)%cmp_ty1(2)%cmp_ty%ii = 800
 ty3_obj(3)%kk = 900

 CALL FOO2(ty3_obj(i:j:1))
END PROGRAM

SUBROUTINE FOO(dmy, dmy1)
  use mod1
  TYPE(ty3), INTENT(OUT):: dmy(4:5)
  TYPE(ty1), INTENT(OUT):: dmy1

  ENTRY FOO2(dmy)
    dmy(4)%ll = 1
END SUBROUTINE
