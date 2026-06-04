MODULE m
TYPE t
    COMPLEX value
    integer ii
END TYPE
type dy
    integer::bb,cc
    double precision :: dd
    real :: rr
end type

    INTEGER,PARAMETER :: single = KIND(0.0), double = KIND(0d0)
    INTERFACE t
      MODULE PROCEDURE real_to_t1, dble_to_t2, int_to_t1
    END INTERFACE
    CONTAINS
    TYPE(t) FUNCTION real_to_t1(x)
    REAL(single),pointer,intent(in):: x
    if (.not.associated(x))print*,103
    real_to_t1%value = x
    real_to_t1%ii = 1
    END FUNCTION
    TYPE(t) FUNCTION dble_to_t2(x)
    REAL(double),pointer,intent(in):: x
    if (.not.associated(x))print*,104
    dble_to_t2%value = x
    dble_to_t2%ii = 2
    END FUNCTION
    TYPE(t) FUNCTION int_to_t1(x,mold)
      INTEGER,pointer,intent(in):: x
      TYPE(t),pointer,intent(in)::mold
    if (.not.associated(x))print*,105
    if (.not.associated(x))print*,106
       mold%ii = 7
      int_to_t1%value = x
      int_to_t1%ii = 3
    END FUNCTION
END

PROGRAM example
    USE m
    TYPE(t) x
    TYPE(t) y
    TYPE(t),pointer::z
    type(dy),pointer::obj
    allocate(obj)
    allocate(z)
    z%ii=0
    obj%bb=17
    obj%cc=42
    obj%rr = 1.5
    obj%dd = 1.5d0
    x = t(obj%rr) 
    x = t(obj%bb,mold=z) 
    y = t(obj%dd) 
    if(real(y%value).eq.1.5d0) then
        if(real(x%value).eq. 17) then
      print*,"Pass"
      else
      print*,101
      endif
    else
      print*,102
    endif
    if (y%ii /= 2)print*,107
    if (z%ii/=7 .or. x%ii/=3)print*,108
END
