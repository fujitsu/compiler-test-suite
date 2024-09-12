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
 TYPE(ty1) :: cmp_ty1(2)
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
        TYPE(ty3)::dmy(:,:)
        counter = counter + 1
        IF ( dmy(1,1)%ll .EQ. (100*counter) ) THEN
           PRINT*, counter,' 4th-destructor call PASS ', dmy(1,1)%ll
        ELSE
           PRINT*, counter,' 4th-destructor call FAIL ', dmy(1,1)%ll
        END IF
    END SUBROUTINE
END MODULE

PROGRAM main
 use mod1
 TYPE(ty3), POINTER :: ty3_obj(:,:)
 INTERFACE
     SUBROUTINE FOO(dmy1, dmy2)
        IMPORT ty, ty3
        TYPE(ty3), INTENT(OUT) :: dmy1(2:2,1:2)
        TYPE(ty), INTENT(OUT) :: dmy2(:,:)
     END SUBROUTINE
 END INTERFACE
 ALLOCATE(ty3_obj(2,2))
 ty3_obj(1, 1)%ll = 100
 ty3_obj(1, 1)%cmp_ty1%jj = 200
 ty3_obj(1, 1)%cmp_ty1(1)%cmp_ty%ii = 300
 ty3_obj(1, 1)%cmp_ty1(2)%cmp_ty%ii = 400
 ty3_obj(1, 1)%kk = 500

 ty3_obj(2, 1)%cmp_ty1%jj = 600
 ty3_obj(2, 1)%cmp_ty1(1)%cmp_ty%ii = 700
 ty3_obj(2, 1)%cmp_ty1(2)%cmp_ty%ii = 800
 ty3_obj(2, 1)%kk = 900

 CALL FOO1(ty3_obj)
 ty3_obj(1, 2)%cmp_ty1%jj = 1900
 ty3_obj(1, 2)%cmp_ty1(1)%cmp_ty%ii = 2000
 ty3_obj(1, 2)%cmp_ty1(2)%cmp_ty%ii = 2100
 ty3_obj(1, 2)%kk = 2200

 ty3_obj(2, 2)%cmp_ty1%jj = 2300
 ty3_obj(2, 2)%cmp_ty1(1)%cmp_ty%ii = 2400
 ty3_obj(2, 2)%cmp_ty1(2)%cmp_ty%ii = 2500
 ty3_obj(2, 2)%kk = 2600
 DEALLOCATE(ty3_obj)
END PROGRAM

SUBROUTINE FOO(dmy1, dmy2)
  use mod1
  TYPE(ty3), INTENT(OUT):: dmy1(2:2,1:2)
  TYPE(ty), INTENT(OUT):: dmy2(:,:)
  ENTRY FOO1(dmy1)
  dmy1(2, 1)%ll = 1000
  dmy1(2, 1)%cmp_ty1%jj = 1100
  dmy1(2, 1)%cmp_ty1(1)%cmp_ty%ii = 1200
  dmy1(2, 1)%cmp_ty1(2)%cmp_ty%ii = 1300
  dmy1(2, 1)%kk = 1400

  dmy1(2, 2)%cmp_ty1%jj = 1500
  dmy1(2, 2)%cmp_ty1(1)%cmp_ty%ii = 1600
  dmy1(2, 2)%cmp_ty1(2)%cmp_ty%ii = 1700
  dmy1(2, 2)%kk = 1800

END SUBROUTINE
