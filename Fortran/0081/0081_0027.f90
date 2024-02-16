MODULE m1
  IMPLICIT NONE
  integer,parameter :: n=6
CONTAINS

  SUBROUTINE calc_sub(data_array)
    REAL :: data_array(n)
  END SUBROUTINE

END 

MODULE m2
  USE m1
  IMPLICIT NONE
CONTAINS
  SUBROUTINE sub()

    CALL sub2(calc_sub)

  END SUBROUTINE

  SUBROUTINE sub2(proc)
    INTERFACE
      SUBROUTINE proc(data_array)
       use m1
       REAL :: data_array(n)
      END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
END MODULE m2

print *,'pass'
end
