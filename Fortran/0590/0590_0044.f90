module m1
type::tm
character(len=:),allocatable::m1(:)
character(len=:),allocatable::m2(:)
end type

type::ty
character(len=:),allocatable::msgTY(:)
end type

type,extends(ty)::tt
character(len=:), allocatable::msgTT(:)
end type

interface assignment(=)
subroutine assign(dmy1,dmy2)
import :: tm, ty
class(tm),intent(out) :: dmy1
class(ty),intent(in),value :: dmy2
end subroutine
end interface
end module

subroutine assign(dmy1,dmy2)
use m1
class(tm),intent(out) :: dmy1
class(ty),intent(in),value :: dmy2

select type (dmy2)
type is(tt)
 if (dmy2%msgTY(1) /= "2222") print *,201
 if (dmy2%msgTY(2) /= "3333") print *,202
 if (dmy2%msgTY(3) /= "4444") print *,203
 if (size(dmy2%msgTY) /= 3) print *,204
 if (len(dmy2%msgTY) /= 4) print *,205

 if (dmy2%msgTT(1) /= "444") print *,206
 if (dmy2%msgTT(2) /= "555") print *,207
 if (dmy2%msgTT(3) /= "666") print *,208
 if (dmy2%msgTT(4) /= "777") print *,209
 if (size(dmy2%msgTT) /= 4) print *,210
 if (len(dmy2%msgTT) /= 3) print *,211

 allocate(character(len=len(dmy2%msgTY))::dmy1%m1(size(dmy2%msgTY)))
 allocate(character(len=len(dmy2%msgTT))::dmy1%m2(size(dmy2%msgTT)))

 dmy1%m1 = dmy2%msgTY
 dmy1%m2 = dmy2%msgTT

class default
 print*, 912
end select
end subroutine
    
program main
use m1
type(tm)::obj

obj = tt(["2222","3333", "4444"], ["444", "555", "666", "777"])

if (obj%m1(1) /= "2222") print *,301
if (obj%m1(2) /= "3333") print *,302
if (obj%m1(3) /= "4444") print *,303
if (size(obj%m1) /= 3) print *,304
if (len(obj%m1) /= 4) print *,305

if (obj%m2(1) /= "444") print *,306
if (obj%m2(2) /= "555") print *,307
if (obj%m2(3) /= "666") print *,308
if (obj%m2(4) /= "777") print *,309
if (size(obj%m2) /= 4) print *,310
if (len(obj%m2) /= 3) print *,311

print*, "PASS"
end
