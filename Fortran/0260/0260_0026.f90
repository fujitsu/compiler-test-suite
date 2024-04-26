module m1
interface
module type(integer(kind=2*2)) function funB(iVal,bVal)
type(integer*4),intent(inout) :: iVal(:)
type(logical*4),value::bVal
end
end interface

contains
module type(integer(kind=2*2)) function funB(iVal,bVal)
type(integer*4),intent(inout) :: iVal(:)
type(logical*4),value::bVal

if(iVal(1) /= 333) print*,201,iVal 
iVal=22
if(iVal(2) /= 22) print*,202
if(bVal .neqv. .true.) print*,203,bval
bval=.false. 
funB=iVal(2)
end
end module

program main
use m1
type(integer*4) :: arr(10)
type(integer(kind=4)) :: ret(10)
type(logical(4))::bAct

bAct=.true.

arr = 2
ret= funA(arr)
if(ret(1) /= 333)print*,100
ret= funB(arr,bAct)
if(bAct .neqv. .true.) print*,200
print*,'Pass'
contains
impure elemental type(integer(kind=(8-4))) function funA(iVal)
type(integer*4),intent(inout) :: iVal

if(iVal /= 2) print*,101,iVal 
iVal=333
if(iVal /= 333) print*,102
funA=iVal
end 
end 
