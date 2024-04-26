PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,start1,END1,start2,END2,L,arr(5),i,arr2(5),M
start1=1
END1=5
start2=2
END2=4
K=10
L=30
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=start1:END1,M=2:3)
 DO CONCURRENT(L=start2:END2,arr(K) /= 3)
    IF(L==1) THEN
     arr=(/ ( L+i,i=1,5,L) /)
    ELSE IF(L==5) THEN
     arr=(/ ( L+i,i=1,L) /)
    ELSE
     arr=(/ ( L+i,i=1,5) /)
    END IF
  END DO
  arr2=(/ (arr(i),i=5,1,-1) /)
END DO
IF (arr(1)==arr2(5) .AND. arr(3)==arr2(3) .AND. arr(5)==arr2(1) .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",arr
 Print *,"FAIL",arr2
END IF
END PROGRAM
