MODULE mod1
IMPLICIT NONE

TYPE abc
  INTEGER :: int1=3
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc => ty_p
END TYPE

TYPE :: xyz
  INTEGER  :: int2=5
  class(abc), pointer :: b_obj
END TYPE

CONTAINS
INTEGER FUNCTION ty_p(def_dmy)
  CLASS(abc) :: def_dmy
  def_dmy%int1 =20
  ty_p = def_dmy%int1
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(xyz) :: obj
ALLOCATE(obj%b_obj)
print*, obj%b_obj%prc()
print*, "Pass"
END PROGRAM
