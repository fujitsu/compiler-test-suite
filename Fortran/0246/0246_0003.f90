PROGRAM MAIN
INTEGER::index_var1=100
INTEGER::var1=0
DO CONCURRENT(index_var1=fun1():0:fun2(),index_var1/=6 .AND. index_var1/=2)
  SELECT CASE(index_var1)
    CASE(0)
      var1=var1+0
    CASE(20,18,16,14,12)
      var1=0
    CASE(10,8,6,4,2)
      var1=var1+1
  END SELECT
END DO
IF(var1 == 3 .AND. index_var1 == 100) THEN 
  PRINT*,'PASS1/2'
ELSE
  PRINT*,'FAIL1/2',var1,index_var1
ENDIF
index_var1=100
DO CONCURRENT(index_var1=20:0:-2,index_var1/=6 .AND. index_var1/=2)
  SELECT CASE(index_var1)
    CASE(0)
      var1=var1+0
    CASE(11:20)
      var1=0
    CASE(1:10)
      var1=var1+1
  END SELECT
END DO
IF(var1 == 3 .AND. index_var1 == 100) THEN 
  PRINT*,'PASS2/2'
ELSE
  PRINT*,'FAIL2/2',var1,index_var1
ENDIF
CONTAINS
INTEGER FUNCTION fun1()
  fun1=20
END FUNCTION
INTEGER FUNCTION fun2()
  fun2=-2
END FUNCTION
END PROGRAM
