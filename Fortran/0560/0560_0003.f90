MODULE m
TYPE t(kind)
    INTEGER, KIND :: kind
    COMPLEX value
    integer ii
END TYPE

    INTEGER,PARAMETER :: single = KIND(0.0), double = KIND(0d0)
    INTERFACE t
      MODULE PROCEDURE real_to_t1, dble_to_t2, int_to_t1, int_to_t2
    END INTERFACE
    CONTAINS
    TYPE(t(single)) FUNCTION real_to_t1(x)
      REAL(single) x
    real_to_t1%value = x
    END FUNCTION
    TYPE(t(double)) FUNCTION dble_to_t2(x)
      REAL(double) x
      dble_to_t2%value = x
    END FUNCTION
    TYPE(t(single)) FUNCTION int_to_t1(x,mold)
      INTEGER x
      TYPE(t(single)) mold
       mold%ii = 2
      int_to_t1%value = x
    END FUNCTION
    TYPE(t(double)) FUNCTION int_to_t2(x,mold)
      INTEGER x
      TYPE(t(double)) mold
       mold%ii = 2
      int_to_t2%value = x
    END FUNCTION
END

PROGRAM MAIN
    USE m
    TYPE(t(double)) y
    y = t(42,mold=y)

    if(real(y%value).ne.42) then
      print*,"FAIL"
    else
      print*,"Pass"
    endif

END
