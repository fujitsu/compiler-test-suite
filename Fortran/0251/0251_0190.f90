MODULE mod1
INTEGER :: co(2,2)

  TYPE ty0
   INTEGER :: I0=0
   CONTAINS
   FINAL :: sub
  END TYPE

  TYPE :: ty1
   INTEGER :: I1=1
   TYPE(ty0) :: objty0
   CONTAINS
   FINAL :: dest
  END TYPE


CONTAINS
 
 SUBROUTINE sub( dmy )
  TYPE(ty0), INTENT(INOUT):: dmy
  co(1,1)=co(1,1) + 1
  print*,"F0 Call ",dmy%I0
 END SUBROUTINE sub

 SUBROUTINE dest( dmy )
 TYPE(ty1), INTENT(INOUT):: dmy
  co(2,1)=co(2,1) + 1
  print*,"F1 Call ",dmy%I1
 END SUBROUTINE dest

END MODULE mod1

PROGRAM p1
  USE mod1
BLOCK
co=0
if(any([(fun1(funx(5)),I=3,5)]/=5)) print*,103
print*,'pass'

if(co(1,1)/=3) then
 print*,101
 co(1,1) = 100
else
 co(1,1) = 0
end if

if(co(2,1)/=3) then
 print*,102
 co(2,1) = 200
else
 co(2,1) = 0
end if

do j=1,2
 do k=1,2
  if(co(j,k) /= 0) then
   PRINT *,'fail',"co(",j,",",k,") : ",co(j,k)
  end if
 end do
end do
ENDBLOCK

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

END PROGRAM p1
