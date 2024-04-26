PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,L,M,X,K2
INTEGER :: arr(5)
X=0
K=10
L=30
K2=10
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=1:5,arr(K)>=2)
  IF(arr(K)==2 .OR. arr(K)==4) THEN
    ASSOCIATE (val=> arr(K))
        DO CONCURRENT(K2=val:5,val>=4)
          X=X+K2
        END DO
    END ASSOCIATE
    Do CONCURRENT(L=2:arr(K)+1,K<5)
     ASSOCIATE(val => arr(L))
       IF(val==4) THEN
          DO CONCURRENT(M=3:val)
            X=X+4
          END DO
       ELSE
         X=X+3
       END IF
     END ASSOCIATE
    END DO
  ELSE
      X=X+1
  END IF
END DO
IF (X==34 .AND.  K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",X
END IF
END PROGRAM

