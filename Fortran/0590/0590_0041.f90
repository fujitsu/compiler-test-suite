module m1
type::ty
character(len=:),allocatable::msgTY(:)
end type

type,extends(ty)::tt
character(len=:), allocatable::msgTT(:)
end type

contains
subroutine assign(dmy)
 class(ty),value :: dmy

 select type (dmy)
 type is(tt)
  if (dmy%msgTY(1) /= "2222") print *,201
  if (dmy%msgTY(2) /= "3333") print *,202
  if (dmy%msgTY(3) /= "4444") print *,203
  if (size(dmy%msgTY) /= 3) print *,204
  if (len(dmy%msgTY) /= 4) print *,205

  if (dmy%msgTT(1) /= "444") print *,206
  if (dmy%msgTT(2) /= "555") print *,207
  if (dmy%msgTT(3) /= "666") print *,208
  if (dmy%msgTT(4) /= "777") print *,209
  if (size(dmy%msgTT) /= 4) print *,210
  if (len(dmy%msgTT) /= 3) print *,211

 class default
  print*, 912
 end select
end subroutine
end module

program main
 use m1
 type(tt), external :: prc

 call assign(prc())
 print*, "PASS"
end

function prc()
 use m1
 type(tt) :: prc

 allocate(character(len=4)::prc%msgTY(3))
 allocate(character(len=3)::prc%msgTT(4))

 prc%msgTY(1) = "2222"
 prc%msgTY(2) = "3333"
 prc%msgTY(3) = "4444"

 prc%msgTT(1) = "444"
 prc%msgTT(2) = "555"
 prc%msgTT(3) = "666"
 prc%msgTT(4) = "777"
end function
