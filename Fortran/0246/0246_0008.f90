PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100
INTEGER::var1=0
DO CONCURRENT(index_var1=10:0:-2,mask_eval(index_var1))
IF(index_var1==10)  GOTO(70,80) , fun1()
IF(index_var1==8)   GOTO(70,80) , fun2()
IF(index_var1==4)   GOTO(70,80) , fun1()
      var1=var1+2
70    var1=var1+1
80    var1=var1+0
END DO
IF(var1 == 5 .AND. index_var1 == 100) THEN 
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',var1,index_var1
ENDIF
CONTAINS
PURE LOGICAL function mask_eval(dmy)
  INTEGER,INTENT(IN)::dmy
  mask_eval=.TRUE.
  IF(dmy .EQ. 6 .OR. dmy .EQ. 2) mask_eval=.FALSE.
END FUNCTION
PURE INTEGER FUNCTION fun1()
  fun1=1
END FUNCTION
PURE INTEGER FUNCTION fun2()
  fun2=2
END FUNCTION
END PROGRAM
