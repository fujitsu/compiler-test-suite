MODULE mod1
TYPE ty
integer,allocatable :: alc
real,allocatable :: blc
END TYPE
type ty1
type(ty) :: cmp
end type
INTERFACE OPERATOR(.ASSIGN.)
    FUNCTION ASSIGN_real_ty1(dmy3, dmy4) result(res2)
      IMPORT ty1
      real,INTENT(IN) :: dmy3
      TYPE(ty1),INTENT(IN):: dmy4
    END FUNCTION
    FUNCTION ASSIGN_integer(dmy1,dmy2) result(res1)
      IMPORT ty1
      integer,INTENT(IN) :: dmy1
      TYPE(ty1),INTENT(IN):: dmy2
    END FUNCTION
END INTERFACE
END MODULE
PROGRAM main
USE mod1

call sub()

contains 
   subroutine sub()
    integer :: r
    integer::dmy
    dmy=5
    r = dmy .ASSIGN. ty1(ty(2,3.0))
    if (r .ne. 7)print*,"101"
    print*,"pass"
   end subroutine

END PROGRAM
FUNCTION ASSIGN_real(dmy3, dmy4)  result(res2)
USE mod1
      real,INTENT(IN) :: dmy3
      TYPE(ty1),INTENT(IN):: dmy4
      res2=dmy3+dmy4%cmp%blc
END FUNCTION
FUNCTION ASSIGN_integer(dmy1,dmy2) result(res1)
USE mod1
      integer, INTENT(IN) :: dmy1
      TYPE(ty1),INTENT(IN):: dmy2
      res1=dmy1+dmy2%cmp%alc
END FUNCTION
