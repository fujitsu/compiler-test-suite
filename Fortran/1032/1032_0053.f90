      MODULE mod
      EXTERNAL fun
      INTEGER :: fun
      CONTAINS
        SUBROUTINE sub()
        if (fun()/=2)print *,'error'
        END SUBROUTINE
      END MODULE
use mod
call sub
print *,'pass'
end
integer function fun()
fun=2
end
