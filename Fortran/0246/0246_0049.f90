PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100,counter=0,index_var2
outer : DO CONCURRENT(index_var1=10:3:-1)
  IF(index_var1==7 .OR.index_var1==5) CYCLE outer
  inner : DO CONCURRENT(index_var2=1:3,index_var1 /= index_var2)
              IF(index_var2==1) CYCLE inner
              counter = counter + 1 
  END DO inner
END DO outer
IF(counter == 11 .AND. index_var1 == 100) THEN
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',counter,index_var1
ENDIF
END PROGRAM
