PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,arr(5),L,M,N,O,arr2(4),X
K=10
L=20
M=30
N=40
O=50
arr=(/ 1,1,1,1,5 /)
arr2=(/ 1,3,5,7 /)
DO CONCURRENT(K=1:5,K<5)
  DO CONCURRENT(L=2:4,arr2(K)>2)
          WHERE(arr<10 .AND. arr(5) ==5)
           arr=arr + 1
          END WHERE
          arr(5)=5
          WHERE(arr2>1)
           arr2=arr2 + 1
          END WHERE
          X=2
  END DO
END DO
IF (X==2 .AND. arr(5)==5 .AND. arr(2)==10 .AND. arr2(4)==16 .AND. K==10 .AND. L==20 .AND. M==30 .AND. N==40 .AND. O==50) then
 Print *,"PASS"
ELSE
 Print *,"FAIL"
END IF
END PROGRAM
