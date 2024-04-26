MODULE mod1
IMPLICIT NONE

TYPE t1
  LOGICAL(KIND = 8) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  LOGICAL(KIND = 8) :: r2
END TYPE

INTERFACE
FUNCTION fun_ext()
IMPLICIT NONE
LOGICAL(KIND = 8) :: fun_ext
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(t1),POINTER :: ptr
CLASS(t2),ALLOCATABLE :: allc
TYPE(t1),ALLOCATABLE :: obj

ALLOCATE(allc,ptr,obj)

allc%r2 = .true.
ptr%r1 = .false.
obj%r1 = .true.

IF(fun(obj)) THEN
  PRINT*,101
ELSE
  PRINT*,'pass'
END IF

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
LOGICAL(KIND = 8) :: fun 
TYPE(t1) :: dd1
ASSOCIATE(aa => allc%r2)
  ASSOCIATE(bb => ptr%r1)
    ASSOCIATE(cc => dd1%r1)
      ASSOCIATE(dd => aa .AND. bb .AND. cc .AND. fun_ext())  
        IF(.NOT.(aa .AND. .false. )) fun = dd
      END ASSOCIATE
    END ASSOCIATE
  END ASSOCIATE
END ASSOCIATE
END FUNCTION

END PROGRAM

FUNCTION fun_ext()
IMPLICIT NONE
LOGICAL(KIND = 8) :: fun_ext
fun_ext = .false.
END FUNCTION
