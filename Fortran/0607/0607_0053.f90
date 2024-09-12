MODULE mod1
TYPE base_type
  INTEGER :: num1
END TYPE

TYPE,EXTENDS(base_type) :: extd_type
  INTEGER :: nm
  PROCEDURE(func),POINTER,PASS(arg1) :: prc
END TYPE
 
CONTAINS

FUNCTION func(arg1,arg2)
IMPLICIT NONE
CLASS(extd_type),INTENT(IN) :: arg1
INTEGER,INTENT(IN) :: arg2
CLASS(extd_type),ALLOCATABLE :: func
ALLOCATE(func)
func%nm = arg1%nm + arg2
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(extd_type) :: obj
CLASS(extd_type),ALLOCATABLE :: et
ALLOCATE(et)
et%nm = 10

SELECT TYPE(asc => et)
TYPE IS(extd_type)
  asc%prc =>  func
  obj = asc%prc(5)
  if (obj%nm == 15) print *,'PASS'
END SELECT
END
