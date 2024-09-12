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

  TYPE :: ty2
   INTEGER :: I2=2
   TYPE(ty1) :: objty1
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
print*,"F0 Call  1000"
print*,"F1 Call  200"
print*,"F0 Call  1000"
  print*,"Fa1 Call ",dmy%I1
 END SUBROUTINE fa1
 

END MODULE mod1

PROGRAM MAIN
  USE mod1
 
  call sub2()

contains
function fun1(dmy)
  type(ty1),INTENT(IN) :: dmy(2)
  integer :: fun1
  fun1 = dmy(1)%I1
end function

SUBROUTINE sub2()
 type(ty2) :: obj2
 integer::ii = 300, jj = 200, kk = 1000
 obj2=ty2(fun1(funx(ii)),ty1(jj,ty0(kk)))
print*, "F1 Call  200"
print*, "F0 Call  1000"
 print*,"obj2 = ", obj2
end SUBROUTINE

Function funx(x)
  Use mod1
  type(ty1):: funx(2)
  integer,intent(in) :: x
   funx%I1=x
   funx%objty0%I0=900
End function

END PROGRAM MAIN
