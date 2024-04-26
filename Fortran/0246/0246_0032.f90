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
          DO WHILE(Z<K*L*M)
            Z=Z+1
          END DO
          IF(Z>=70) THEN
            X=X+1
          END IF
  END DO
END DO
IF (X == 1 .AND. Z == 80 .AND. K==10 .AND. L==20 .AND. M==30 .AND. N==40 .AND. O==50) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",Z,X
END IF
END PROGRAM
