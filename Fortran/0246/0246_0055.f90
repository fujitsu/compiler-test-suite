PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,start1,END1,start2,END2,L
TYPE ty
 INTEGER :: KK=1
 INTEGER :: LL=1
END TYPE
TYPE ty2
 INTEGER :: KK2=2
 TYPE (ty) :: objty
END TYPE
TYPE (ty2) :: objty2(15)
start1=1
END1=5
start2=2
END2=4
K=10
L=30
DO CONCURRENT(K=start1:END1:objty2(1)%KK2)
DO CONCURRENT(L=start2:END2:objty2(1)%objty%KK,.NOT. SAME_TYPE_AS(objty2%objty,objty2))
    IF(L==2) THEN
      objty2(K) = ty2(K,ty(K,L))
    END IF
  END DO
END DO
IF (objty2(3)%objty%KK==3 .AND. objty2(5)%objty%KK==5 .AND. objty2(2)%KK2==2 .AND. objty2(3)%KK2==3 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",objty2(3)%objty%KK
END IF
END PROGRAM
