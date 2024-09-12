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

i=0
do 
   i=i+1
   WRITE(*,*) "PASS - ",i
   if(fun1(funx(0))) 10,20,30
end do 

10 PRINT*,"PASS 10"
20 PRINT*,"PASS 20"
30 PRINT*,"PASS 30"


contains
function fun1(dmy)
  type(ty0),INTENT(IN) :: dmy(2)
  integer :: fun1
  fun1 = dmy(1)%I0
end function

Function funx(x)
  Use mod1
  integer,intent(in) :: x
  type(ty0),POINTER :: funx(:)
  ALLOCATE(funx(2))
  funx%I0 =x
End function

END PROGRAM MAIN
