MODULE mod1

  TYPE ty0
   INTEGER :: I0=0
   CONTAINS
   FINAL :: f0,fa0
  END TYPE

  TYPE :: ty1
   INTEGER :: I1=1
   TYPE(ty0),POINTER :: objty0(:)
   CONTAINS
   FINAL :: f1,fa1
  END TYPE


CONTAINS
 
 SUBROUTINE f0( dmy )
  TYPE(ty0), INTENT(INOUT):: dmy
  print*,"F0 Call ",dmy%I0
 END SUBROUTINE f0

 SUBROUTINE fa0( dmy )
 TYPE(ty0), INTENT(INOUT):: dmy(:)

 END SUBROUTINE fa0

 SUBROUTINE f1( dmy )
 TYPE(ty1), INTENT(INOUT):: dmy
  print*,"F1 Call ",dmy%I1
 END SUBROUTINE f1

 SUBROUTINE fa1( dmy )
 TYPE(ty1), INTENT(INOUT):: dmy(:)
  print*,"Fa1 Call ",dmy%I1
 END SUBROUTINE fa1
 

END MODULE mod1

PROGRAM MAIN
  USE mod1

do i=fun1(funx(1)) + fun1(funx(4)),fun1(funx(2)) * fun1(funx(3))
   WRITE(*,*) "PASS - ", i
end do

contains
function fun1(dmy)
  type(ty1),INTENT(IN) :: dmy(2)
  integer :: fun1
  fun1 = dmy(1)%I1
end function

Function funx(x)
  Use mod1
  integer,intent(in) :: x
  type(ty1),ALLOCATABLE :: funx(:)
  ALLOCATE(funx(2))
  funx%I1 =x
  ALLOCATE(funx(1)%objty0(2))
  ALLOCATE(funx(2)%objty0(2))
  funx(1)%objty0%I0 =100
  funx(2)%objty0%I0 =200
End function

END PROGRAM MAIN
