module m1
type::ty
character(len=:),allocatable::msgTY(:)
end type

type,extends(ty)::tt
character(len=:),allocatable::msgTT(:)
end type

contains
subroutine s(dmy)
class(*),value :: dmy(:)

select type (dmy)
 type is(ty)
  if(size(dmy) /= 2) print *, 101
  if(size(dmy(1)%msgTY) /= 2) print *, 102
  if(size(dmy(2)%msgTY) /= 3) print *, 103
  if(len(dmy(1)%msgTY) /= 4) print *, 104
  if(len(dmy(2)%msgTY) /= 5) print *, 105
  if(all(dmy(1)%msgTY /= "AAAA")) print *,106, dmy(1)%msgTY
  if(all(dmy(2)%msgTY /= "BBBBB")) print *,107, dmy(2)%msgTY
 
  dmy(1)%msgTY = "1111"
  dmy(2)%msgTY = "22222"

 type is(tt)
  if(size(dmy) /= 3) print *, 201
  if(size(dmy(2)%msgTY) /= 4) print *, 202
  if(size(dmy(3)%msgTT) /= 5) print *, 203
  if(len(dmy(2)%msgTY) /= 6) print *, 204
  if(len(dmy(3)%msgTT) /= 7) print *, 205
  if(all(dmy(2)%msgTY /= "CCCCCC")) print *,206, dmy(2)%msgTY
  if(all(dmy(3)%msgTT /= "DDDDDDD")) print *,207, dmy(3)%msgTT

  dmy(2)%msgTY = "333333"
  dmy(3)%msgTT = "4444444"
end select
end subroutine
end
    
program main
use m1
type(ty),allocatable::objTY(:)
type(tt),allocatable::objTT(:)

allocate(ty::objTY(2))
allocate(tt::objTT(3))

allocate(character(4)::objTY(1)%msgTY(2))
allocate(character(5)::objTY(2)%msgTY(3))

allocate(character(6)::objTT(2)%msgTY(4))
allocate(character(7)::objTT(3)%msgTT(5))

objTY(1)%msgTY = "AAAA"
objTY(2)%msgTY = "BBBBB"

objTT(2)%msgTY = "CCCCCC"
objTT(3)%msgTT = "DDDDDDD"

call s(objTY)
if (all(objTY(1)%msgTY /= "AAAA")) print *,301, objTY(1)%msgTY
if (all(objTY(2)%msgTY /= "BBBBB")) print *,302, objTY(2)%msgTY

call s(objTT)
if (all(objTT(2)%msgTY /= "CCCCCC")) print *,303, objTT(2)%msgTY
if (all(objTT(3)%msgTT /= "DDDDDDD")) print *,304, objTT(3)%msgTT
print*, "PASS"
end
