MODULE m
TYPE t(kind)
INTEGER, KIND :: kind
COMPLEX(kind) value
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
int_to_t1%value = x
END FUNCTION
TYPE(t(double)) FUNCTION int_to_t2(x,mold)
INTEGER x
TYPE(t(double)) mold
int_to_t2%value = x
END FUNCTION
END
PROGRAM example
USE m
TYPE(t(single)) x
TYPE(t(double)) y
x = t(1.5)
x = t(17,mold=x)
y = t(1.5d0)
y = t(42,mold=y)
y = t(kind(0d0)) ((0,1))
print *,'pass'
END
