MODULE mod1
INTEGER :: counter = 0
TYPE ty
  INTEGER :: ii = 10
CONTAINS
  FINAL::dest
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
END MODULE
PROGRAM main
use mod1
 TYPE(ty)  :: ty_obj
 ty_obj%ii= 100
 CALL FOO()
 IF(ty_obj%ii .EQ. 200) THEN 
    PRINT*,'FAIL', ty_obj%ii
 ELSE
    PRINT*,'PASS', ty_obj%ii
 END IF
CONTAINS
 SUBROUTINE FOO(dmy)
    TYPE(ty), OPTIONAL, INTENT(OUT) :: dmy
    IF(PRESENT(dmy)) dmy%ii = 200
 END SUBROUTINE
END PROGRAM
