PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,X,L,Y
INTEGER,ALLOCATABLE :: arr(:)
X=0
K=10
L=30
Y=0
DO CONCURRENT(K=1:5)
  IF(.NOT. ALLOCATED(arr)) THEN
    ALLOCATE(arr(5))
    arr=(/ 1,2,3,4,5 /)
  END IF
   DO CONCURRENT(L=1:4,arr(K)>2)
      IF(arr(L)==arr(K)) THEN
        DO WHILE(X<L)
          X=X+1
        END DO
      ELSE
       DO WHILE(Y<L)
         Y=Y+1
       END DO
      END IF
   END DO
END DO
IF (X == 4 .AND. Y == 4 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",X,Y
END IF
END PROGRAM
