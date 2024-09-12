MODULE mod2

REAL ,POINTER :: temp(:,:)

TYPE ty1
  PROCEDURE(sub),POINTER,NOPASS,PRIVATE :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE

CONTAINS

SUBROUTINE callsub(dmy)
  TYPE(ty2) :: obj
  REAL :: dmy(2,3)
  dmy = 4.0
  dmy(2,1) = 5.0
  obj%ty1_obj%proc_ptr => sub
  call obj%ty1_obj%proc_ptr(dmy)
END SUBROUTINE

SUBROUTINE sub(dum)
  REAL :: dum(2,3)
  dum(2,1) = 5.7
END SUBROUTINE

END MODULE

PROGRAM MAIN
USE mod2

ALLOCATE(temp(2,3))
temp=2.0
temp(2,1)=3.0
call callsub(temp)

IF (temp(1,1) .EQ. 4.0 .AND. temp(2,1) .EQ. 5.7) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail',temp
ENDIF

END PROGRAM MAIN
