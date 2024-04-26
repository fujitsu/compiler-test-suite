PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100
INTEGER::index_var2=200,index_var3
INTEGER::var1=0
DO CONCURRENT(index_var1=10:4:-2,index_var2=1:3:2,index_var1/=6)
  var1=var1+1
  FORALL(index_var3=6:10:2)
    var1=var1+1
  END FORALL
END DO 
IF(var1 == 12 .AND. index_var1 == 100 .AND. index_var2 == 200) THEN 
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',var1,index_var1,index_var2
ENDIF
END PROGRAM
