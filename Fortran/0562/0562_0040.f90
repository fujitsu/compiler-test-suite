MODULE m
TYPE t
    COMPLEX value
    integer ii
END TYPE

    INTEGER,PARAMETER :: single = KIND(0.0), double = KIND(0d0)
    INTERFACE t
      MODULE PROCEDURE real_to_t1, dble_to_t2
    END INTERFACE
    CONTAINS
    TYPE(t) FUNCTION real_to_t1(x)
    REAL(single),pointer,intent(in):: x
    if (.not.associated(x))print*,101
    real_to_t1%value = x
    real_to_t1%ii = 5
    END FUNCTION
    TYPE(t) FUNCTION dble_to_t2(x)
    REAL(double),pointer,intent(in):: x
    if (associated(x))print*,102
    dble_to_t2%value = x
    dble_to_t2%ii = 6
    END FUNCTION
END

PROGRAM example
    USE m
    TYPE(t) x
    real,target :: r1
    r1=1.50
    x = t(r1) 
    if(real(x%value).ne.1.5) then
      print*,"FAIL"
    else
      print*,"Pass"
    endif
    if (x%ii /=5)print*,103
END
