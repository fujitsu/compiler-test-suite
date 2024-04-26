PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100,counter=0
OUTER : DO CONCURRENT(index_var1=10:3:-1)
  IF(index_var1==9 .OR. index_var1==7 .OR.index_var1==5 .OR.index_var1==3) CYCLE
  counter = counter + 1 
END DO OUTER
IF(counter == 4 .AND. index_var1 == 100) THEN
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',counter,index_var1
ENDIF
END PROGRAM
