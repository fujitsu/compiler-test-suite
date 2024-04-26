PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,X,Z,arr(5),L,M,N,O
X=0
Z=0
K=10
L=20
M=30
N=40
O=50
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=1:5,K<5)
  DO CONCURRENT(L=2:4,M=3:5,arr(K)>=2 .AND. arr(L)>=3)
      DO CONCURRENT(N=1:7,L>=2 .AND. arr(K)<=4)
        DO CONCURRENT(O=3:8)
          Z=Z+1
          IF(Z>=700) THEN
            X=X+1
          END IF
        END DO
      END DO
  END DO
END DO
IF (X == 57 .AND. Z==756 .AND. K==10 .AND. L==20 .AND. M==30 .AND. N==40 .AND. O==50) then
 Print *,"PASS"
ELSE
 Print *,"FAIL",X,Z
END IF
END PROGRAM
