      MODULE mod
      INTEGER(KIND=4) :: fun1
      EXTERNAL fun1,fun2
      INTEGER(KIND=4) :: fun2
      INTEGER(KIND=4),external:: fun3
      CONTAINS
        SUBROUTINE sub()
        i = fun1()
        if (i/=1)print *,'error-1'
        i = fun2()
        if (i/=2)print *,'error-2'
        i = fun3()
        if (i/=3)print *,'error-3'
        END SUBROUTINE
      END MODULE
use mod
call sub
print *,'pass'
end
integer function fun1()
fun1=1
end
integer function fun2()
fun2=2
end
integer function fun3()
fun3=3
end
