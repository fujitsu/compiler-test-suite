PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,L,M,X
INTEGER :: arr(5)
X=0
K=10
L=30
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=1:5,arr(K)>=2)
  if(arr(K)==3) then
    Do CONCURRENT(L=2:arr(K)+1,K<5)
     IF(arr(L)==4) then
        DO CONCURRENT(M=3:arr(L))
            X=X+4
        END DO
     ELSE
       X=X+3
     END IF
    END DO
  else
      X=X+1
  end if
END DO
IF (X==17 .AND.  K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",X
END IF
END PROGRAM

