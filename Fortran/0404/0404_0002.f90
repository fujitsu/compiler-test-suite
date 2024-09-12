MODULE mod1
  IMPLICIT NONE

  TYPE ty1
    INTEGER(kind=8) :: i1=0
    PROCEDURE(fun1),POINTER,PASS(def_dmy),PUBLIC :: proc_ptr=>NULL()
  END TYPE

  TYPE ::ty2
    INTEGER :: int1=0
    INTEGER :: int2=0
    TYPE(ty1) :: ty1_obj
  END TYPE


  TYPE(ty2) , SAVE :: temp
 
  CONTAINS  
    FUNCTION fun(dmy)
      save
      INTEGER :: dmy
      CLASS(ty2),ALLOCATABLE :: fun
      CLASS(ty1)::def_dmy
      INTEGER :: dmy1
      INTEGER :: dmy2
      CLASS(ty2),ALLOCATABLE :: fun1
      ALLOCATE(fun)
    RETURN
      ENTRY fun1(def_dmy,dmy1,dmy2)
        ALLOCATE(ty2::fun1)
      RETURN
    END FUNCTION
END MODULE
print *,'pass'
end

