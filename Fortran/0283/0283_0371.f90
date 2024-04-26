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

CLASS(t1),POINTER :: ptr
CLASS(t2),ALLOCATABLE :: allc
TYPE(t1),ALLOCATABLE :: obj

ALLOCATE(allc,ptr,obj)

allc%r2 = .true.
ptr%r1 = .false.
obj%r1 = .true.

ASSOCIATE(aa => allc%r2 .AND. ptr%r1 .AND. obj%r1)
  IF(.NOT.(aa .AND. .false. )) PRINT*,'pass'  
END ASSOCIATE

END PROGRAM
