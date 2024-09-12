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
  integer :: arr(3),brr(3),crr(3)

arr=( /(i,i=fun1(funx(1)),fun1(funx(3)))/ )
brr(1)=0
brr(2)=0
brr(3)=3
crr=0

crr= arr + ( /(fun1(funx(i)),i=fun1(funx(3)),fun1(funx(5)))/ ) + fun1(funx(2)) + brr
print *,crr



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
  funx%I1=x
  funx%objty0%I0 =100
End function

END PROGRAM MAIN
