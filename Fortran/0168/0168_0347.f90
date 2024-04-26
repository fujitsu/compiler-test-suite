MODULE mod1
  IMPLICIT NONE

  TYPE ty2
    INTEGER :: int1
    INTEGER :: int2
  END TYPE

  CONTAINS  
    FUNCTION fun()
      TYPE(ty2) :: fun
      TYPE(ty2) :: fun1
      fun%int1 =  1
    RETURN
      ENTRY fun1()
      fun1%int1 =  1
    END FUNCTION
END MODULE

print *,'pass'
END 
