MODULE mod1

  TYPE ty0
   INTEGER :: I0=0
   CONTAINS
   FINAL :: f0,fa0
  END TYPE

  TYPE :: ty1
   INTEGER :: I1=1
   TYPE(ty0) :: objty0
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
  print*,"Fa0 Call ",dmy%I0

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

goto (10,20,30,40) fun1(funx(3))

10 print *,"Pass 10"
20 print *,"Pass 20"
30 print *,"Pass 30"
40 print *,"Pass 40"

contains
function fun1(dmy)
  type(ty1),INTENT(IN) :: dmy
  integer :: fun1
  fun1 = dmy%I1
end function

Function funx(x)
  Use mod1
  type(ty1),ALLOCATABLE :: funx
  integer,intent(in) :: x
  ALLOCATE(funx)
  funx%I1 =x
  funx%objty0%I0 =100
End function

END PROGRAM MAIN
