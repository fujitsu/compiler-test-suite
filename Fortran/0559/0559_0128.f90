MODULE m
TYPE tt(kind)
 INTEGER, KIND :: kind
integer::value = 2
END TYPE
INTEGER,PARAMETER :: single = KIND(0.0), double = KIND(0d0)
INTERFACE tt
MODULE PROCEDURE int_to_t1, int_to_t2
END INTERFACE
 CONTAINS
TYPE(tt(single)) FUNCTION int_to_t1(x,mold)
 INTEGER x
 TYPE(tt(single)) mold
 mold% value = 2
 int_to_t1%value = x + 3
END FUNCTION
TYPE(tt(double)) FUNCTION int_to_t2(x,mold)
 real x
 TYPE(tt(double)) mold
 mold% value = 2
 int_to_t2%value = x + 4
END FUNCTION
END
use m
TYPE(tt(single)) mold1
print*,tt(2,mold1)

mold1 = tt(2,mold1)
    if(mold1%value .eq. 5)then
    print*,'Pass'
    else
    print*,'FAIL'
    endif
end


