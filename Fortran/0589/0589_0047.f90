module m1
type ty
integer,allocatable::t
character(len=:),allocatable::ch(:)

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
allocate(trg%t)
allocate(character(len=8)::trg%ch(2))

trg%t=1
trg%ch(2)="ffffffff"
trg%ch(1)="gggggg"

trg%fun() = ty(1000,(/"1234567","7654321"/))

if (trg%t /=1000) print*,101
if (trg%ch(1) /= "1234567" ) print *,102
if (trg%ch(2) /= "7654321" ) print *,103
if (len(trg%ch(1)) /= 7) print *,104
if (len(trg%ch(2)) /= 7) print *,105
print*,"PASS"
end
