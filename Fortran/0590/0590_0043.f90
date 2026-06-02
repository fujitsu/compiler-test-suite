module m1
type::ty
character(len=:),allocatable::msgTY(:)
end type

type,extends(ty)::tt
character(len=:), allocatable::msgTT(:)
end type

interface
subroutine s(dmy1,dmy2)
import :: ty
class(ty),value :: dmy1
class(*),value :: dmy2
end subroutine
end interface
end module

subroutine s(dmy1,dmy2)
use m1
class(ty),value :: dmy1
class(*),value :: dmy2

select type (dmy1)
type is(tt)
 if (dmy1%msgTY(1) /= "AAA") print *,201
 if (dmy1%msgTY(2) /= "BBB") print *,202
 if (size(dmy1%msgTY) /= 2) print *,203
 if (len(dmy1%msgTY) /= 3) print *,204

 if (dmy1%msgTT(1) /= "CCCC") print *,201
 if (dmy1%msgTT(2) /= "DDDD") print *,202
 if (dmy1%msgTT(3) /= "EEEE") print *,202
 if (size(dmy1%msgTT) /= 3) print *,203
 if (len(dmy1%msgTT) /= 4) print *,204

 dmy1%msgTY = "abc"
 dmy1%msgTT = "pqr"

class default
 print*, 911
end select

select type (dmy2)
type is(tt)
 if (dmy2%msgTY(1) /= "2222") print *,205
 if (dmy2%msgTY(2) /= "3333") print *,206
 if (dmy2%msgTY(3) /= "4444") print *,207
 if (size(dmy2%msgTY) /= 3) print *,208
 if (len(dmy2%msgTY) /= 4) print *,209

 if (dmy2%msgTT(1) /= "444") print *,210
 if (dmy2%msgTT(2) /= "555") print *,211
 if (dmy2%msgTT(3) /= "666") print *,212
 if (dmy2%msgTT(4) /= "777") print *,213
 if (size(dmy2%msgTT) /= 4) print *,214
 if (len(dmy2%msgTT) /= 3) print *,215

 dmy2%msgTY = "5432"
 dmy2%msgTT = "123"

class default
 print*, 912
end select
end subroutine
    
program main
use m1
call s(tt(["AAA","BBB"], ["CCCC", "DDDD", "EEEE"]), tt(["2222","3333", "4444"], ["444", "555", "666", "777"]))
print*, "PASS"
end
