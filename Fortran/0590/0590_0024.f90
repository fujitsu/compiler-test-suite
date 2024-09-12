module m1
type::ty
character(len=5)::msgTY
end type

type,extends(ty)::tt
character(len=6)::msgTT
end type

contains
subroutine s(dmy1, dmy2)
class(*),value :: dmy1
class(*),value :: dmy2

select type (dmy1)
 type is(ty)
  if (dmy1%msgTY /= "AAAAA") print *,201, dmy1%msgTY
  if (len(dmy1%msgTY) /= 5) print *,202
  dmy1%msgTY = "11111"

 class default
  print*, 911
end select

select type (dmy2)
 type is(tt)
  if (len(dmy2%msgTY) /= 5) print *,203
  if (len(dmy2%msgTT) /= 6) print *,204
  if (dmy2%msgTY /= "BBBBB") print *,205, dmy2%msgTY
  if (dmy2%msgTT /= "CCCCCC") print *,206, dmy2%msgTT
  dmy2%msgTY = "22222"
  dmy2%msgTT = "333333"

 class default
  print*, 912
end select
end subroutine
end
    
program main
use m1
type(ty)::objTY
type(tt):: objTT

objTY%msgTY = "AAAAA"

objTT%msgTY = "BBBBB"
objTT%msgTT = "CCCCCC"

call s(objTY, objTT)
if (objTY%msgTY /= "AAAAA") print *,101, objTY%msgTY
if (objTT%msgTY /= "BBBBB") print *,102, objTT%msgTY
if (objTT%msgTT /= "CCCCCC") print *,103, objTT%msgTT
print*, "PASS"
end
