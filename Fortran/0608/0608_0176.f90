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

  TYPE, extends(ty1) :: ty2
   INTEGER :: I2=2
   CONTAINS
   FINAL :: f2,fa2
  END TYPE

  TYPE ty3
   INTEGER :: I3=3
   TYPE(ty2) :: objty2(2)
   CONTAINS
   FINAL :: f3,fa3
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
 
 SUBROUTINE f2( dmy )
 TYPE(ty2), INTENT(INOUT):: dmy
  print*,"F2 Call ",dmy%I2
 END SUBROUTINE f2

 SUBROUTINE fa2( dmy )
 TYPE(ty2), INTENT(INOUT):: dmy(:)
  print*,"Fa2 Call ",dmy%I2
 END SUBROUTINE fa2

SUBROUTINE f3( dmy )
 TYPE(ty3), INTENT(INOUT):: dmy
  print*,"F3 Call ",dmy%I3

 END SUBROUTINE f3

 SUBROUTINE fa3( dmy )
  TYPE(ty3), INTENT(INOUT):: dmy(:)
  print*,"Fa3 Call ",dmy%I3
  
 END SUBROUTINE fa3

END MODULE mod1

PROGRAM MAIN
  USE mod1

do i=1,fun1(funx(3)),1
   WRITE(*,*) "PASS - ", i
end do

contains
function fun1(dmy)
  type(ty3),INTENT(IN) :: dmy(2)
  integer :: fun1
  fun1 = dmy(1)%I3
end function

Function funx(x)
  Use mod1
  type(ty3) :: funx(2)
  integer,intent(in) :: x

  funx%I3 =x
  funx%objty2(1)%I2 =200
  funx%objty2(2)%I2 =200
  funx%objty2(1)%I1 =100
  funx%objty2(2)%I1 =100
  funx%objty2(1)%objty0%I0 =0
  funx%objty2(2)%objty0%I0 =0
End function

END PROGRAM MAIN