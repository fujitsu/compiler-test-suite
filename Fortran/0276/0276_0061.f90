module m1
type ty
integer::t
character(len=7)::ch(2)

contains
 procedure:: fun
end type

contains
function fun(dmy)
type(ty),pointer ::fun
class(ty),target:: dmy
fun=>dmy
end function
end module

use m1
type(ty) :: trg
type(ty) :: obj1
obj1%t=10
obj1%ch(1)="opqrstu"
obj1%ch(2)="vwxyzab"

trg%t=1
trg%ch(2)="abcdefg"
trg%ch(1)="hijklmn"

OPEN( 35, FILE='FORT.3', ACCESS='DIRECT', RECL=20,FORM='UNFORMATTED' ) 
        WRITE( 35, REC=1 ) obj1
        READ( 35, REC=1 ) trg%fun()
CLOSE (35,STATUS='DELETE' )

if (trg%t /=10) print*,101
if (trg%ch(1) /= "opqrstu" ) print *,102
if (trg%ch(2) /= "vwxyzab" ) print *,103
print*,"Pass"
end
