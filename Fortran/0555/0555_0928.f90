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
SUBROUTINE  ty_p(x, def_dmy)
  CLASS(abc) :: def_dmy
  integer :: x
  x=x+20
  if(def_dmy%int1 .NE. 10) print*,"Err 1"
  print*,"Pass"
 
END SUBROUTINE
END MODULE
 
 
PROGRAM main
USE mod1
IMPLICIT NONE
TYPE(xyz) :: obj
integer :: x
x=10
ALLOCATE(obj%b_obj)
obj%b_obj%int1=10
call obj%b_obj%gen(x)
END PROGRAM
