MODULE MOD1
 IMPLICIT NONE
 TYPE TY(k1,k2)
   INTEGER,KIND :: k1,k2
   INTEGER,DIMENSION(k1+k2)::arr
   INTEGER ::arr1(k1+14+k2)
 END TYPE
 CONTAINS
 SUBROUTINE sub(dmy)
  TYPE(TY(2,4))::dmy
  dmy%arr(2) = 10
  dmy%arr1(2:20:5)=3
  dmy%arr1(8)=0
 END SUBROUTINE
END MODULE
PROGRAM MAIN
USE MOD1
 IMPLICIT NONE
 TYPE(TY(2,4))::obj
 call sub(obj)
 IF(SIZE(obj%arr) .EQ. 6 .and. obj%arr1(7) .eq. 3 .and. obj%arr1(8) .eq. 0) THEN
  PRINT*,"PASS"
 ELSE
  PRINT*,"FAIL"
 ENDIF
END PROGRAM
