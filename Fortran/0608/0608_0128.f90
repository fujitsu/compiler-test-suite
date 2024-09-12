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
END TYPE ty1

TYPE ty2
 INTEGER::kk = 30
 CONTAINS
 FINAL::final_ty2
END TYPE ty2

TYPE, EXTENDS(ty2)::ty3
 INTEGER :: ll = 40
 TYPE(ty1), POINTER :: cmp_ty1(:)
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

    SUBROUTINE final_ty1(dmy)
        TYPE(ty1)::dmy(:)
        counter = counter + 1
        IF ( dmy(1)%jj .EQ. (100*counter) ) THEN
           PRINT*, counter,' 2nd-destructor call PASS ', dmy%jj
        ELSE
           PRINT*, counter,' 2nd-destructor call FAIL ', dmy%jj
        END IF
    END SUBROUTINE
    SUBROUTINE final_ty2(dmy)
        TYPE(ty2)::dmy
        counter = counter + 1
        IF ( dmy%kk .EQ. (100*counter) ) THEN
           PRINT*, counter,' 3rd-destructor call PASS ', dmy%kk
        ELSE
           PRINT*, counter,' 3rd-destructor call FAIL ', dmy%kk
        END IF
    END SUBROUTINE
    SUBROUTINE final_ty3(dmy)
        TYPE(ty3)::dmy
        counter = counter + 1
        IF ( dmy%ll .EQ. (100*counter) ) THEN
           PRINT*, counter,' 4th-destructor call PASS ', dmy%ll
        ELSE 
           PRINT*, counter,' 4th-destructor call FAIL ', dmy%ll
        END IF
    END SUBROUTINE
END MODULE

PROGRAM main
 use mod1
 TYPE(ty3), POINTER :: ty3_obj
 TYPE(ty1), POINTER :: ty1_obj(:)
  INTERFACE
    SUBROUTINE FOO(dmy)
        IMPORT ty3
        TYPE(ty3), INTENT(OUT) :: dmy
    END SUBROUTINE
 END INTERFACE
 ALLOCATE(ty1_obj(2))
 ALLOCATE(ty3_obj)
 ty3_obj%cmp_ty1 => ty1_obj
 ty3_obj%ll = 100
 ty3_obj%kk = 200
 CALL FOO(ty3_obj)
 DEALLOCATE(ty3_obj)
END PROGRAM

SUBROUTINE FOO(dmy)
  use mod1
  TYPE(ty3), INTENT(OUT):: dmy
  dmy%ll = 300
  dmy%kk = 400
END SUBROUTINE
