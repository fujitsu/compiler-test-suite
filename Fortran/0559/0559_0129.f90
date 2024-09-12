MODULE m
TYPE tt(kind)
 INTEGER, KIND :: kind
 real value  
 integer ii
END TYPE
INTERFACE tt
MODULE PROCEDURE int_to_t1, int_to_t2
END INTERFACE
 CONTAINS
TYPE(tt(2)) FUNCTION int_to_t1(x,mold)
 INTEGER x
 TYPE(tt(2)) mold
 mold%value = 2
 int_to_t1%value = x + 3
END FUNCTION
TYPE(tt(4)) FUNCTION int_to_t2(x)
 real x
 int_to_t2%value = x + 4
END FUNCTION
END
use m
TYPE(tt(4))::x 
x = tt(4)(5.1,2)

if(x%value .eq. 5.1 .and. x%ii .eq. 2)then
print*,'PASS'
else 
print*,'FAIL'
endif
end


