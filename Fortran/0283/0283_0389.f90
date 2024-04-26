MODULE mod1
IMPLICIT NONE

TYPE t1
  LOGICAL(KIND = 4) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  LOGICAL(KIND = 4) :: r2
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(*),POINTER :: ptr1
CLASS(t1),POINTER :: ptr2
CLASS(t2),ALLOCATABLE :: allc
TYPE(t1),ALLOCATABLE :: obj

ALLOCATE(allc,ptr2,obj)

allc%r2 = .true.
ptr2%r1 = .false.
obj%r1 = .true.

ALLOCATE(ptr1 , SOURCE = ptr2)

SELECT TYPE(ptr1)
TYPE IS(t1)
  ASSOCIATE(aa => allc%r2 .AND. ptr1%r1 .AND. obj%r1)
    IF(.NOT.(aa .AND. .false. )) PRINT*,'pass'  
  END ASSOCIATE
END SELECT

END PROGRAM
