PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100
INTEGER::index_var2
INTEGER::var1=0
DO CONCURRENT(index_var1=10:4:-2,index_var1/=6)
  var1=var1+1
  FORALL(index_var2=6:10:2)
    var1=var1+1
  END FORALL
END DO 
IF(var1 == 6 .AND. index_var1 == 100) THEN 
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',var1,index_var1
ENDIF
END PROGRAM
