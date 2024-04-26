PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100
INTEGER::var1=0
DO CONCURRENT(index_var1=10:0:-2,index_var1/=6 .AND. index_var1/=2)
IF(index_var1==0)  GOTO 70
      var1=var1+1
70    var1=var1+0
END DO
IF(var1 == 3 .AND. index_var1 == 100) THEN 
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL2\2',var1,index_var1
ENDIF
END PROGRAM
