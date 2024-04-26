PROGRAM MAIN
IMPLICIT NONE
INTERFACE
PURE INTEGER FUNCTION fun1(dmy1)
  INTEGER::fun2
  INTEGER,INTENT(IN)::dmy1
END FUNCTION
PURE INTEGER FUNCTION fun2(dmy1,dmy2)
  INTEGER,INTENT(IN)::dmy1,dmy2
END FUNCTION
PURE INTEGER FUNCTION fun3()
END FUNCTION
PURE INTEGER FUNCTION fun4()
END FUNCTION
END INTERFACE

INTEGER::index_var1=100
INTEGER::var1=0
DO CONCURRENT(index_var1=fun1(20):0:fun2(20,22),index_var1/=fun3() .AND. index_var1/=fun4())
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
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',var1,index_var1
ENDIF
END PROGRAM



PURE INTEGER FUNCTION fun1(dmy1)
  INTEGER::fun2,fun3,fun4
  INTEGER,INTENT(IN)::dmy1,dmy2
  fun1=dmy1
  return
ENTRY fun2(dmy1,dmy2)
  fun2=dmy1-dmy2
  return
ENTRY fun3()
  fun3=6
  return
ENTRY fun4()
  fun4=2
  return
END FUNCTION
