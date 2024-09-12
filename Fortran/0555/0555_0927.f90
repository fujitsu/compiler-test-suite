MODULE mod1
IMPLICIT NONE
 
TYPE abc
  INTEGER :: int1
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc => ty_p
    generic ::gen => prc
END TYPE
 
TYPE :: xyz
  INTEGER  :: int2
  class(abc), pointer :: b_obj
END TYPE
 
CONTAINS
INTEGER FUNCTION ty_p(def_dmy)
  CLASS(abc) :: def_dmy
  ty_p = def_dmy%int1
END FUNCTION
END MODULE
 
 
PROGRAM main
USE mod1
IMPLICIT NONE
TYPE(xyz) :: obj
ALLOCATE(obj%b_obj)
obj%b_obj%int1=10
if(obj%b_obj%gen() .NE. obj%b_obj%int1) print*,"Err 1"
print*,"Pass"
END PROGRAM

