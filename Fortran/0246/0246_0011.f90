PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100
INTEGER::index_var2,index_var3
INTEGER::where_test(3)=(/6,8,10/)
INTEGER::var1(3)=0
INTEGER::arr(2)
arr(1)=6
arr(2)=-2
DO CONCURRENT(index_var1=10:arr(1):arr(2),index_var3=10:9:-1,index_var1/=fun())
  var1=var1+1
  FORALL(index_var2=6:10:2)
    WHERE(where_test .EQ. 6 .OR. where_test .EQ. 8 .OR. where_test .EQ. 10)
      var1=var1+1
    ELSEWHERE
      var1=0
    ENDWHERE
  END FORALL
END DO
IF(var1(1) == 8 .AND. index_var1 == 100) THEN 
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',var1(1),index_var1
ENDIF
CONTAINS
PURE FUNCTION fun()
  INTEGER::fun
  fun=6
END FUNCTION
END PROGRAM
