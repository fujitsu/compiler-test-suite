MODULE mod1
TYPE ty
  INTEGER :: ii
  CONTAINS
  FINAL::dest
  FINAL::dest_arr
end type
CONTAINS
     SUBROUTINE dest(dmy)
      TYPE(ty)::dmy
      counter = counter + 1
      IF ( dmy%ii .EQ. (100*counter) ) THEN
          PRINT*, counter,' 1st-destructor call PASS ', dmy%ii
      ELSE
          PRINT*, counter,' 1st-destructor call FAIL ', dmy%ii
      END IF
     END SUBROUTINE
     SUBROUTINE dest_arr(dmy)
      TYPE(ty)::dmy(*)
      counter = counter + 1
      IF ( dmy(1)%ii .EQ. (100*counter) ) THEN
          PRINT*, counter,' 2nd-destructor call PASS ', dmy(1)%ii
      ELSE
          PRINT*, counter,' 2nd-destructor call FAIL ', dmy(1)%ii
      END IF
     END SUBROUTINE
END MODULE
PROGRAM main
use mod1
 TYPE(ty), POINTER  :: ty_obj(:)
 ALLOCATE(ty_obj(3))
 ty_obj(1)%ii= 100
 ty_obj(2)%ii= 100
 ty_obj(3)%ii= 100
 CALL FOO()
 IF(ty_obj(1)%ii .EQ. 100) THEN
    PRINT*,'PASS', ty_obj(1)%ii
 ELSE
    PRINT*,'FAIL', ty_obj(1)%ii
 END IF
CONTAINS
 SUBROUTINE FOO(dmy)
    TYPE(ty), OPTIONAL, INTENT(OUT) :: dmy(:)
    IF(PRESENT(dmy)) dmy(1)%ii = 200
 END SUBROUTINE
END PROGRAM
