MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL(KIND = 8) :: rr1
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL(KIND = 8) :: rr2
END TYPE

INTERFACE OPERATOR(.plus.)
  MODULE PROCEDURE addit
END INTERFACE

INTERFACE OPERATOR( .mult. )
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION addit(ddy1,ddy2)
IMPLICIT NONE
CLASS(t1),INTENT(IN) :: ddy1
CLASS(t2),DIMENSION(:),INTENT(IN) :: ddy2
CLASS(t2),DIMENSION(:),ALLOCATABLE :: addit
ALLOCATE(addit(10))
addit%rr2 = ddy1%rr1 + ddy2%rr2
END FUNCTION

FUNCTION multip(ddy1,ddy2)
IMPLICIT NONE
CLASS(t2),DIMENSION(:),INTENT(IN) :: ddy1
CLASS(t1),INTENT(IN) :: ddy2
CLASS(t2),DIMENSION(:),ALLOCATABLE :: multip
ALLOCATE(multip(10))
multip%rr2 = ddy1%rr2 * ddy2%rr1
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL(KIND = 8),DIMENSION(10) :: res
CLASS(t1),POINTER :: ptr,ptr2
CLASS(*),DIMENSION(:),ALLOCATABLE :: acc1
CLASS(t2),DIMENSION(:),ALLOCATABLE :: acc2
ALLOCATE(acc2(10),ptr,ptr2)
acc2%rr2 = 55.00
acc2%rr1 = 55.00
ALLOCATE(acc1,SOURCE = acc2)
ptr%rr1 =  20.00
ptr2%rr1 = 15.00

res = fun_mn(ptr,acc1)

IF(ALL(res(1:10) .EQ. 1.1 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_mn(dptr,dcc1)
IMPLICIT NONE
REAL(KIND = 8),DIMENSION(10) :: fun_mn
CLASS(t1),POINTER :: dptr
CLASS(*),DIMENSION(:),ALLOCATABLE :: dcc1

SELECT TYPE(dcc1)
TYPE IS(t2)
ASSOCIATE(aa => dptr , bb => dcc1, &
          cc => dptr .plus. dcc1 , dd => acc2 .mult. ptr2 , ee => dcc1%rr2 * 2.0)
  IF(ALL(bb%rr2 .GT. aa%rr1)) aa%rr1 = 1.0
  WHERE(cc%rr2 .LT. dd%rr2)
    fun_mn = aa%rr1
  ELSEWHERE
    fun_mn = 0.0
  END WHERE 
  IF(ALL(ee(1:10) .EQ. 110.00)) THEN
    fun_mn = 1.1
  ELSE
    fun_mn = 0.0
  END IF
END ASSOCIATE      
END SELECT

END FUNCTION

END PROGRAM 
