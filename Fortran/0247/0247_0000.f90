PROGRAM p1
IMPLICIT NONE
INTEGER :: i,j,sum=0
INTEGER :: temp=0
INTEGER :: arr(5)
INTEGER :: brr(10:14)
arr=[1,2,3,4,5]
brr(10:14)=[5,4,3,2,1]
DO 10 CONCURRENT(i=1:5, arr(i)>4)
   temp = temp + i 
  goto 30
  DO 20 CONCURRENT(j=10:14,arr(i) >brr(j))
     sum = sum + j 
   20 arr(i)=brr(j)
  30 sum = sum+ i
10 end do

 
IF(sum== 5) THEN
  Print *,"Pass"
END IF
END

