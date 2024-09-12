MODULE mytype_module
TYPE mytype
 COMPLEX value
 LOGICAL exact
END TYPE
INTERFACE mytype
 MODULE PROCEDURE int_to_mytype
END INTERFACE
CONTAINS
TYPE(mytype) FUNCTION int_to_mytype(i)
INTEGER,INTENT(IN) :: i
int_to_mytype%value = cmplx(i,i)
int_to_mytype%exact = .TRUE.
END FUNCTION
END
PROGRAM example
USE mytype_module
TYPE(mytype) x
x = mytype(17)
if (abs(x%value-(17,17))>0.001)print *,101,x%value
if (.not.x%exact)print *,102
print *,'pass'
END
