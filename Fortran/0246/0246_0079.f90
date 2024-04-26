PROGRAM p1
IMPLICIT NONE
INTEGER :: i,j,sum=0
INTEGER :: temp=0
INTEGER :: arr(5)
INTEGER :: brr(10:14)
arr=[1,2,3,4,5]
brr(10:14)=[5,4,3,2,1]
OUTER : DO CONCURRENT(i=1:5)
   temp = temp + i
   INNER: DO CONCURRENT(j=10:14,arr(i) >brr(j))
     GOTO 30      
     30 sum = sum + j
     arr(i)=brr(j)
   END DO INNER
   sum = sum + i
END DO OUTER

IF(sum==145 .AND. temp==15 .AND. arr(2)==1 .AND. arr(3)==1 .AND. arr(4)==1 .AND. arr(5)==1) THEN
  Print *,"PASS"
ELSE
 Print *,"FAIL",sum,temp
END IF
  
 
END PROGRAM p1

