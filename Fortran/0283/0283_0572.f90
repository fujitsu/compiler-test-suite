MODULE mod1
IMPLICIT NONE

REAL(KIND = 8) :: num = 12.00

TYPE t1
  COMPLEX(KIND =8) :: cmp1
  REAL(KIND = 8) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  COMPLEX(KIND = 8) :: cmp2
  REAL(KIND = 8) :: r2
END TYPE

TYPE :: typ
  REAL(KIND = 8) :: rn
  CONTAINS
  PROCEDURE,PASS(dy1) :: funtyp
END TYPE

INTERFACE 
SUBROUTINE sub(dd1,dd2)
IMPLICIT NONE
REAL(KIND = 8) :: dd1,dd2
END SUBROUTINE
END INTERFACE

CONTAINS

FUNCTION funtyp(dy1,dy2)
IMPLICIT NONE
CLASS(typ),INTENT(IN) :: dy1
REAL(KIND = 8),INTENT(IN) :: dy2
REAL(KIND = 8) :: funtyp
funtyp = dy1%rn + dy2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL(KIND = 8),DIMENSION(3:8) :: arr1 = (/1.0,2.0,3.0,4.0,5.0,6.0/)
REAL(KIND = 8) :: ext = 0.0,res
CLASS(t2),ALLOCATABLE :: acc1
TYPE(t1) :: obj
TYPE(typ),ALLOCATABLE :: pobj
ALLOCATE(acc1,pobj)
acc1%cmp2 = (12.30,34.90)
acc1%r2 = 22.00
obj%r1 = 10.00
pobj%rn = 3.0

res = fun_in(acc1,arr1(4:7))

IF(res .EQ. 38.00) THEN 
 PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_in(dacc1,darr1)
IMPLICIT NONE
REAL(KIND = 8) :: fun_in
REAL(KIND = 8),DIMENSION(10:) :: darr1
CLASS(t2),ALLOCATABLE :: dacc1

ASSOCIATE(aa => AIMAG(dacc1%cmp2))
  DO WHILE(ext .LT. aa)
    ext = ext + 2.0
  END DO
  ASSOCIATE(bb => darr1 * (/4.0,2.0,3.0,5.0/))
    IF(bb(3) .EQ. 12.0) THEN
      ext = ext + 1.0
    ELSE
      ext = 0.0
    END IF
  END ASSOCIATE
  ASSOCIATE(bb => pobj%funtyp(num) + obj%r1)
    IF(INT(bb) .EQ. 25 ) ext = ext + 1.0
  END ASSOCIATE
  CALL sub(aa,ext)
  fun_in = ext
END ASSOCIATE

END FUNCTION

END PROGRAM

SUBROUTINE sub(dd1,dd2)
IMPLICIT NONE
REAL(KIND = 8) :: dd1,dd2
dd1 = dd2
END SUBROUTINE
