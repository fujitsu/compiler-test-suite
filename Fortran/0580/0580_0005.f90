MODULE mod1
TYPE ty
integer,allocatable :: alc
real,allocatable :: blc
END TYPE
TYPE ty1
type(ty):: cmp
END TYPE

INTERFACE ASSIGNMENT(=)
    SUBROUTINE ASSIGN_real_ty1(dmy3, dmy4) 
      IMPORT ty1
      real,INTENT(OUT) :: dmy3
      TYPE(ty1),INTENT(IN):: dmy4
    END SUBROUTINE
    SUBROUTINE ASSIGN_integer(dmy1,dmy2)
      IMPORT ty1
      integer,INTENT(OUT) :: dmy1
      TYPE(ty1),INTENT(IN):: dmy2
    END SUBROUTINE
END INTERFACE
END MODULE
PROGRAM main
USE mod1

call sub()

contains 
   subroutine sub()
    integer::dmy
    dmy=ty1(ty(1,2.0))
    if(dmy .ne. 1)print*,"101"
    PRINT*,'pass'
   end subroutine

END PROGRAM
SUBROUTINE ASSIGN_integer(dmy1,dmy2)
USE mod1
      integer, INTENT(OUT) :: dmy1
      TYPE(ty1),INTENT(IN):: dmy2
      dmy1=dmy2%cmp%alc
END SUBROUTINE
SUBROUTINE ASSIGN_real(dmy3, dmy4) 
USE mod1
      real,INTENT(OUT) :: dmy3
      TYPE(ty1),INTENT(IN):: dmy4
      dmy3=dmy4%cmp%blc
END SUBROUTINE
