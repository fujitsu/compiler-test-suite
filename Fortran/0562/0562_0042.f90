MODULE m
TYPE tt
integer::value = 2
END TYPE
INTEGER,PARAMETER :: single = KIND(0.0), double = KIND(0d0)
INTERFACE tt
MODULE PROCEDURE int_to_t1, int_to_t2
END INTERFACE
 CONTAINS
TYPE(tt) FUNCTION int_to_t1(x,mold)
 INTEGER,pointer,intent(in)::x
 TYPE(tt),pointer,intent(in)::mold
 if (.not.associated(x))print*,101
 if (.not.associated(mold))print*,102
 if (mold%value /=1)print*,103
 mold%value = 2
 int_to_t1%value = x + 3
END FUNCTION
TYPE(tt) FUNCTION int_to_t2(x,mold)
 real x
 TYPE(tt) mold
 mold% value = 2
 int_to_t2%value = x + 4
END FUNCTION
END
use m
TYPE(tt) mold1
TYPE(tt),target:: mold2
integer,target ::aa
aa=2
mold2%value = 1
mold1 = tt(aa,mold2)
    if(mold1%value .eq. 5)then
    print*,'Pass'
    else
    print*,'FAIL'
    endif
    if (mold2%value/=2)print*,104
end


