 MODULE mod4
 IMPLICIT NONE

 TYPE ty1
   INTEGER::i1=0
 END TYPE
type(ty1) :: main_ty1obj

CONTAINS
FUNCTION mod4_fun3()
  CLASS(*),ALLOCATABLE::mod4_fun3(:)
  ALLOCATE(ty1::mod4_fun3(4))
END FUNCTION
 END MODULE
 USE mod4

 CLASS(*),ALLOCATABLE::main_unlimloc(:)
ALLOCATE(main_unlimloc,SOURCE=mod4_fun3())
        if(lbound(main_unlimloc,1) .ne. 1)print*,101
        if(ubound(main_unlimloc,1) .ne. 4)print*,102
        print*,"PASS"
END PROGRAM


