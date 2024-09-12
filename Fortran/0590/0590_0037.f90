module m1
type ts
integer,allocatable::alc(:)
end type

type::ty
type(ts)::obj
character(len=:),allocatable::msgTY(:)
end type

type,extends(ty)::tt
character(len=:), allocatable::msgTT(:)
end type

contains
subroutine s(dmy1,dmy2)
class(ty),value:: dmy1
class(*),value:: dmy2

if (dmy1%obj%alc(1) /= 11) print *,201
if (dmy1%obj%alc(2) /= 12) print *,202
if (dmy1%obj%alc(3) /= 13) print *,203
if (size(dmy1%obj%alc) /= 3) print *,204

if (dmy1%msgTY(1) /= "11111") print *,205
if (dmy1%msgTY(2) /= "AAAAA") print *,206
if (size(dmy1%msgTY) /= 2) print *,207
if (len(dmy1%msgTY) /= 5) print *,208

dmy1%obj   = ts([31,32,33])
dmy1%msgTY = "abcde"

select type (dmy2)
type is(tt)
 if (dmy2%obj%alc(1) /= 21) print *,301
 if (dmy2%obj%alc(2) /= 22) print *,302
 if (dmy2%obj%alc(3) /= 23) print *,303
 if (dmy2%obj%alc(4) /= 24) print *,304
 if (size(dmy2%obj%alc) /= 4) print *,305

 if (dmy2%msgTY(1) /= "2222") print *,306
 if (dmy2%msgTY(2) /= "3333") print *,307
 if (dmy2%msgTY(3) /= "4444") print *,308
 if (size(dmy2%msgTY) /= 3) print *,309
 if (len(dmy2%msgTY) /= 4) print *,310

 if (dmy2%msgTT(1) /= "444") print *,311
 if (dmy2%msgTT(2) /= "555") print *,312
 if (dmy2%msgTT(3) /= "666") print *,313
 if (dmy2%msgTT(4) /= "777") print *,314
 if (size(dmy2%msgTT) /= 4) print *,315
 if (len(dmy2%msgTT) /= 3) print *,316

 dmy2%obj   = ts([41,42,43, 44])
 dmy2%msgTY = "5432"
 dmy2%msgTT = "123"

class default
 print*, 911
end select
end subroutine
end
    
program main
use m1
call s(ty(ts([11,12,13]), ["11111","AAAAA"]), tt(ts([21,22,23,24]), ["2222","3333", "4444"], ["444", "555", "666", "777"]))
print*, "PASS"
end
