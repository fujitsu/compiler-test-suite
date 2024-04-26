PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100
INTEGER::index_var2=200
INTEGER::index_var3=300
INTEGER::index_var4=400
INTEGER::var3=0
INTEGER::var4=0
INTEGER::var5=0
DO 10 CONCURRENT(index_var1=2:4,index_var2=3:4,index_var3=5:2:-1,fun1(index_var1)/=index_var2)
  DO 10 var3=2,4
    DO 20 CONCURRENT(var3=1:5)
      DO var4=1,1
      END DO
      DO 80 var5=1,2
      80 END DO
      DO 30 CONCURRENT(index_var4=1:var3)
      30 END DO
    20 END DO
10 continue
IF(index_var1 == 100 .AND. index_var2==200 .AND. index_var3 == 300 .AND. index_var4==400 .AND. var3==5 .AND. var4 == 2 .AND. var5 == 3) THEN 
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',index_var3,var3,var4,var5
ENDIF
CONTAINS
PURE INTEGER FUNCTION fun1(dmy)
  INTEGER,INTENT(IN)::dmy
  fun1=dmy+2
END FUNCTION
END PROGRAM
