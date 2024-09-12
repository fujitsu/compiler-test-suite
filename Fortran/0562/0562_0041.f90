MODULE m
TYPE t
    COMPLEX value
    integer ii
END TYPE

    INTEGER,PARAMETER :: single = KIND(0.0), double = KIND(0d0)
    INTERFACE t
      MODULE PROCEDURE real_to_t1, dble_to_t2, int_to_t1
    END INTERFACE
    CONTAINS
    TYPE(t) FUNCTION real_to_t1(x)
      REAL(single) x
    real_to_t1%value = x
    END FUNCTION
    TYPE(t) FUNCTION dble_to_t2(x)
      REAL(double) x
      dble_to_t2%value = x
    END FUNCTION
    TYPE(t) FUNCTION int_to_t1(x,mold)
      INTEGER,pointer,intent(in):: x
      TYPE(t),pointer,intent(in)::mold
      if (.not.associated(x))print*,101
      if (.not.associated(mold))print*,102
      if (x/=2 .or. mold%value/=1 .or. mold%ii/=3)print*,103
       mold%ii = 4
      int_to_t1%value = x
      int_to_t1%ii = 5
    END FUNCTION
END

PROGRAM example
    USE m
    TYPE(t),target::x
    integer,target::aa
    x%value = 1
    aa=2
    x%ii = 3
    x = t(aa,mold=x) 
    if(real(x%value).ne.2) then
      print*,"FAIL"
    else
      print*,"Pass"
    endif
    if (x%ii /= 5)print*,104
END
