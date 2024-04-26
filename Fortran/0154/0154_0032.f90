MODULE m
TYPE t(k)
integer,kind::k
COMPLEX(kind=k) value
END TYPE
INTERFACE t
MODULE PROCEDURE real_to_t1,double_to_t1
END INTERFACE
CONTAINS
TYPE(t(4)) FUNCTION real_to_t1(x)
REAL(4) x
real_to_t1%value = x
END FUNCTION
TYPE(t(8)) FUNCTION double_to_t1(x)
REAL(8) x
double_to_t1%value = x+100
END FUNCTION
END
PROGRAM example
USE m
TYPE(t(4)) x
TYPE(t(8)) y
x = t(1.5)
if (abs(x%value-1.5)>0.0001) print *,101
y = t(1.5_8)
if (abs(y%value-1.5-100)>0.001) print *,103,y%value
x = t (4)((0,1)) 
if (abs(x%value-(0,1))>0.0001) print *,102
print *,'pass'
END
