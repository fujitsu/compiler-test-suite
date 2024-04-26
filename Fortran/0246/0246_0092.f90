PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100
INTEGER::index_var2=200
INTEGER::index_var3=300
INTEGER::var1=0
INTEGER::var2=0
INTEGER::var3=0
DO 10 CONCURRENT(index_var1=2:4,index_var2=3:4,index_var3=5:2:-1,fun1(index_var1)/=index_var2)
  var1=var1+1
  DO 10 var3=2,4
    DO CONCURRENT(var3=1:1)
        var2=var2+1
    END DO
10 END DO
IF(var1 == 20 .AND. var2==60 .AND. index_var1 == 100) THEN 
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',var1,index_var1,var2
ENDIF
CONTAINS
PURE INTEGER FUNCTION fun1(dmy)
  INTEGER,INTENT(IN)::dmy
  fun1=dmy+2
END FUNCTION
END PROGRAM
