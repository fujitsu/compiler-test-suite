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
import :: tm, ty, tt
class(tm),intent(out) :: dmy1(:)
class(ty),value,intent(in) :: dmy2(:)
end subroutine
end interface
end module

subroutine assign(dmy1,dmy2)
use m1
class(tm),intent(out) :: dmy1(:)
class(ty),value,intent(in) :: dmy2(:)

select type (dmy2)
type is(tt)
 if (dmy2(2)%msgTY(1) /= "2222") print *,201
 if (dmy2(2)%msgTY(2) /= "3333") print *,202
 if (dmy2(2)%msgTY(3) /= "4444") print *,203
 if (size(dmy2(2)%msgTY) /= 3) print *,204
 if (len(dmy2(2)%msgTY) /= 4) print *,205

 if (dmy2(2)%msgTT(1) /= "444") print *,206
 if (dmy2(2)%msgTT(2) /= "555") print *,207
 if (dmy2(2)%msgTT(3) /= "666") print *,208
 if (dmy2(2)%msgTT(4) /= "777") print *,209
 if (size(dmy2(2)%msgTT) /= 4) print *,210
 if (len(dmy2(2)%msgTT) /= 3) print *,211

 allocate(character(len=len(dmy2(2)%msgTY))::dmy1(2)%m1(size(dmy2(2)%msgTY)))
 allocate(character(len=len(dmy2(2)%msgTT))::dmy1(2)%m2(size(dmy2(2)%msgTT)))

 dmy1(2)%m1 = dmy2(2)%msgTY
 dmy1(2)%m2 = dmy2(2)%msgTT

class default
 print*, 912
end select
end subroutine
    
program main
use m1
type(tm)::obj(2)
type(tt)::obj2(2)

allocate(character(len=4)::obj2(2)%msgTY(3))
allocate(character(len=3)::obj2(2)%msgTT(4))

obj2(2)%msgTY(1) = "2222"
obj2(2)%msgTY(2) = "3333"
obj2(2)%msgTY(3) = "4444"

obj2(2)%msgTT(1) = "444"
obj2(2)%msgTT(2) = "555"
obj2(2)%msgTT(3) = "666"
obj2(2)%msgTT(4) = "777"

obj = obj2

if (obj(2)%m1(1) /= "2222") print *,301
if (obj(2)%m1(2) /= "3333") print *,302
if (obj(2)%m1(3) /= "4444") print *,303
if (size(obj(2)%m1) /= 3) print *,304
if (len(obj(2)%m1) /= 4) print *,305

if (obj(2)%m2(1) /= "444") print *,306
if (obj(2)%m2(2) /= "555") print *,307
if (obj(2)%m2(3) /= "666") print *,308
if (obj(2)%m2(4) /= "777") print *,309
if (size(obj(2)%m2) /= 4) print *,310
if (len(obj(2)%m2) /= 3) print *,311

print*, "PASS"
end
