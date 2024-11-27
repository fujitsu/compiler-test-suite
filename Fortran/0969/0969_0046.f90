MODULE mytype_module
 TYPE mytype
  PRIVATE
  COMPLEX value
  LOGICAL exact
 END TYPE
 INTERFACE mytype
  MODULE PROCEDURE int_to_mytype
 END INTERFACE

 CONTAINS
  TYPE(mytype) FUNCTION int_to_mytype(i)
   INTEGER,INTENT(IN) :: i
   int_to_mytype%value = i
   int_to_mytype%exact = .TRUE.
  END FUNCTION

END

PROGRAM example
 USE mytype_module
 TYPE(mytype) x
 x = mytype(17)
END
