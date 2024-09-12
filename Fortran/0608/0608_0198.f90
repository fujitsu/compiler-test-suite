MODULE mod1
INTEGER :: co(2,2)

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
  co(1,1)=co(1,1) + 1
 END SUBROUTINE f0

 SUBROUTINE fa0( dmy )
 TYPE(ty0), INTENT(INOUT):: dmy(:)
  co(1,2)=co(1,2) + 1

 END SUBROUTINE fa0

 SUBROUTINE f1( dmy )
 TYPE(ty1), INTENT(INOUT):: dmy
  co(2,1)=co(2,1) + 1
 END SUBROUTINE f1

 SUBROUTINE fa1( dmy )
 TYPE(ty1), INTENT(INOUT):: dmy(:)
  co(2,2)=co(2,2) + 1
 END SUBROUTINE fa1
 
 
END MODULE mod1

PROGRAM MAIN
  USE mod1

co=0
print*,[(fun1(funx(3)),I=3,5)]
do j=1,2
 do k=1,2
  if(co(j,k) /= 0) then
   PRINT *,"co(",j,",",k,") : ",co(j,k)
  end if
 end do
end do


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
