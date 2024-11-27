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
 FINAL::final_ele_ty1
END TYPE ty1

TYPE ty2
 INTEGER::kk = 30
 CONTAINS
 FINAL::final_ty2
END TYPE ty2

TYPE, EXTENDS(ty2)::ty3
 INTEGER :: ll = 40
 TYPE(ty1), ALLOCATABLE :: cmp_ty1(:)
 TYPE(ty2), POINTER :: cmp_ty2(:)
 CONTAINS
 FINAL::final_ty3
END TYPE ty3

CONTAINS
    SUBROUTINE final_ty(dmy)
        TYPE(ty)::dmy
        counter = counter + 1
        IF ( (4 .EQ. counter  .or.  &
              5 .EQ. counter) .or.  &
             dmy%ii .EQ. 10 ) THEN
           PRINT*, counter,' 1st-destructor call PASS ', dmy%ii
        ELSE
           PRINT*, counter,' 1st-destructor call FAIL ', dmy%ii
        END IF
    END SUBROUTINE

    ELEMENTAL SUBROUTINE final_ele_ty1(dmy)
        TYPE(ty1), INTENT(INOUT)::dmy
    END SUBROUTINE

    SUBROUTINE final_ty1(dmy)
        TYPE(ty1)::dmy(:)
        counter = counter + 1
        IF ( dmy(1)%jj .EQ. 10*(counter-1) ) THEN
            PRINT*, counter,' 2nd-destructor call PASS ', dmy%jj
        ELSE
            PRINT*, counter,' 2nd-destructor call FAIL ', dmy%jj
        END IF
    END SUBROUTINE
    SUBROUTINE final_ty2(dmy)
        TYPE(ty2)::dmy
        counter = counter + 1
        IF ( dmy%kk .EQ. (100*counter) .or. &
             (dmy%kk == 400 .and. 7==counter) ) THEN
            PRINT*, counter,' 3rd-destructor call PASS ', dmy%kk
        ELSE
            PRINT*, counter,' 3rd-destructor call FAIL ', dmy%kk
        END IF
    END SUBROUTINE
    SUBROUTINE final_ty3(dmy)
        TYPE(ty3)::dmy
        counter = counter + 1
        IF ( dmy%ll .EQ. (100*counter) .or. &
             (dmy%ll .EQ. 300 .and. counter==6)) then
            PRINT*, counter,' 4th-destructor call PASS ', dmy%ll
        ELSE
            PRINT*, counter,' 4th-destructor call FAIL ', dmy%ll
        END IF
    END SUBROUTINE
END MODULE

PROGRAM main
 use mod1
 TYPE(ty3), ALLOCATABLE :: ty3_obj
 INTERFACE
    SUBROUTINE FOO(dmy1, dmy2 )
        IMPORT ty, ty3
        CLASS(ty), INTENT(OUT):: dmy1
        CLASS(ty3), INTENT(OUT) :: dmy2
    END SUBROUTINE
    SUBROUTINE FOO1(dmy2)
        IMPORT ty, ty3
        CLASS(ty3), INTENT(OUT) :: dmy2
    END SUBROUTINE
 END INTERFACE
 ALLOCATE(ty3_obj)
 ALLOCATE(ty3_obj%cmp_ty1(2))
 ALLOCATE(ty3_obj%cmp_ty2(3))
 ty3_obj%ll = 100
 ty3_obj%kk = 200
 CALL FOO1(ty3_obj)

 DEALLOCATE(ty3_obj)
END PROGRAM

SUBROUTINE FOO(dmy1, dmy2)
  use mod1
  CLASS(ty), INTENT(OUT):: dmy1
  CLASS(ty3), INTENT(OUT):: dmy2

  ENTRY FOO1(dmy2)
  dmy2%ll = 300
  dmy2%kk = 400

END SUBROUTINE
