MODULE mod1

TYPE ty
  INTEGER::test_var=0
  CONTAINS
  FINAL::des1
END TYPE

TYPE,EXTENDS(ty)::ty1
INTEGER::int_ty1
END TYPE

TYPE,EXTENDS(ty)::ty2
INTEGER::int_ty2
END TYPE

INTEGER::counter=0

CONTAINS
SUBROUTINE des1(dmy)
  TYPE(ty)::dmy
  IF(dmy%test_var==2) THEN
    counter=counter+2
  ELSE IF(dmy%test_var==3) THEN
    counter=counter+3
  ELSE IF(dmy%test_var==4) THEN
    counter=counter+4
  ELSE
    counter=counter+0
  END IF
END SUBROUTINE
END MODULE

PROGRAM MAIN
Use mod1
IMPLICIT NONE
INTEGER :: K,X,L,M
CLASS(ty1),ALLOCATABLE,TARGET::obj1
CLASS(ty2),ALLOCATABLE,TARGET::obj2
CLASS(ty),POINTER :: o1,o2
X=0
K=10
L=30
ALLOCATE(ty1::obj1)
ALLOCATE(ty2::obj2)
o1=>obj1
o2=>obj2

DO CONCURRENT(K=1:5:2,L=2:4,K>2)
     SELECT TYPE (O => o1)
      CLASS IS(ty1)
        X=X+1
        O%int_ty1=L
        DO CONCURRENT(M=O%int_ty1:5,M /= 3)
            X=X+1
        END DO
      TYPE IS(ty2)
        X=X+2
        O%int_ty2=L
     END SELECT
     SELECT TYPE(O => o2)
      CLASS IS(ty2)
       O%int_ty2=K
       X=X+2
     END SELECT
END DO
IF (X == 32  .AND. K==10 .AND. L==30) THEN
 Print *,"PASS "
else
 Print *,"FAIL ",X
END IF
END PROGRAM
