MODULE mod1
IMPLICIT NONE
 
TYPE abc
  INTEGER :: int1
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc => ty_p
END TYPE
 
TYPE :: xyz
  INTEGER  :: int2
  class(abc), pointer :: b_obj
END TYPE

CONTAINS
SUBROUTINE  ty_p(def_dmy)
  CLASS(abc) :: def_dmy
  if(def_dmy%int1 .NE. 10) print*,"Err 1"
  print*,"Pass"
 
END SUBROUTINE
END MODULE
 
 
PROGRAM main
USE mod1
IMPLICIT NONE
TYPE(xyz) :: obj
ALLOCATE(obj%b_obj)
obj%b_obj%int1=10
call obj%b_obj%prc()
END PROGRAM
