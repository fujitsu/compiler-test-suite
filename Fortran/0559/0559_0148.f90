MODULE MOD1
IMPLICIT NONE
type ty (k1,k2)
  integer ,KIND :: k1,k2
  integer :: arr(k1+k2)
  integer (KIND=k1):: jj = k2+k1
  integer (KIND=k2):: pp = k2+k1
end type

type(ty(2,2))::obj1
type(ty(4,4))::obj2
type(ty(2,2))::obj3
type(ty(4,4))::obj4
type(ty(2,2))::obj5
type(ty(1,1))::obj6
END MODULE
PROGRAM MAIN
USE MOD1
IMPLICIT NONE
IF(obj4%jj .eq. 8 .and. obj6%jj .eq. 2 ) THEN
 PRINT*,"PASS"
ELSE
 PRINT*,"ERROR"
ENDIF
END PROGRAM
