module m1
type ts
character(:),allocatable:: msgTS(:)
end type

type ty
character(4):: msgTY
type(ts), allocatable :: obj(:)
end type

type,extends(ty)::tt
character(5)::msgTT
end type

contains
subroutine s(dmy)
class(*),value :: dmy(:,:)

select type (dmy)
 type is (tt)
  if (all(dmy(8,9)%obj(3)%msgTS /= "CCC")) print *, 201
  if (all(dmy(8,9)%obj(5)%msgTS /= "DD")) print *, 202
  if (all(dmy%msgTY /= "BBBB")) print *, 203
  if (all(dmy%msgTT /= "AAAAA")) print *, 204
  if (len(dmy(8,9)%obj(3)%msgTS) /= 3) print*, 205
  if (len(dmy(8,9)%obj(5)%msgTS) /= 2) print*, 205
  if (len(dmy(8,9)%msgTY) /= 4) print*, 206
  if (len(dmy(8,9)%msgTT) /= 5) print*, 207

  dmy(8,9)%obj(3)%msgTS = "111"
  dmy(8,9)%obj(5)%msgTS = "22"
  dmy%msgTY = "3333"
  dmy%msgTT = "44444"

 class default
  print*, 911
end select
end subroutine
end
    
subroutine s1   
use m1
type(tt),allocatable::objTT(:,:)

allocate(objTT(10,11))
allocate(objTT(8,9)%obj(6))
allocate(character(len=3)::objTT(8,9)%obj(3)%msgTS(3))
allocate(character(len=2)::objTT(8,9)%obj(5)%msgTS(4))

objTT(8,9)%obj(3)%msgTS = "CCC"
objTT(8,9)%obj(5)%msgTS = "DD"
objTT%msgTY = "BBBB"
objTT%msgTT = "AAAAA"

call s(objTT)
if (all(objTT(8,9)%obj(3)%msgTS /= "CCC")) print *, 101
if (all(objTT(8,9)%obj(5)%msgTS /= "DD")) print *, 102
if (all(objTT%msgTY /= "BBBB")) print *, 103
if (all(objTT%msgTT /= "AAAAA")) print *, 104
end
      
program pro
call s1
print *,"PASS"
end
