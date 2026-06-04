MODULE Mod1

 INTEGER :: counter=0

 TYPE ty
  INTEGER :: val
 END TYPE

 INTERFACE
  PURE  SUBROUTINE sub1(d1)
   INTEGER, INTENT(IN) :: d1
  END SUBROUTINE
 END INTERFACE

contains
 SUBROUTINE destructor(dmy)
  TYPE (ty) :: dmy
  if(dmy%val == 2 .OR. dmy%val ==4) counter = counter + 1
 END SUBROUTINE

END MODULE

PROGRAM MAIN
USE Mod1
IMPLICIT NONE
INTEGER :: K,start1,END1,start2,END2,L

start1=1
END1=5
start2=2
END2=4
K=10
L=30
DO CONCURRENT(K=start1:END1)
  DO CONCURRENT(L=start2:END2)
    call sub1(K)
  END DO
END DO
IF ( K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL"
END IF
END PROGRAM
PURE SUBROUTINE sub1(d1)
  Use Mod1
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i
  i=d1
  obj1%val=i
  i=obj1%val
END SUBROUTINE
