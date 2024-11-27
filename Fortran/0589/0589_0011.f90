module m1
type ts
character(len=:),allocatable::msg(:)
end type

type, extends(ts)::tt
integer,allocatable :: alc(:)
end type

type ty
integer,allocatable :: ii(:)
class(ts),allocatable::obj(:)
end type

type(ty) :: trg(2)

contains
function fun(dmy)
type(ty),pointer :: fun(:)
type(ty),target :: dmy(:)
fun => dmy
end
end module

use m1
allocate(trg(1)%ii(2))
allocate(ts::trg(2)%obj(2))
allocate(character(len=4)::trg(2)%obj(1)%msg(4))
allocate(character(len=4)::trg(2)%obj(2)%msg(5))
trg(1)% ii = 20
trg(2)%obj(1)%msg = "AAAA"
trg(2)%obj(2)%msg = "BBBB"

call sub(fun(trg))

if(size(trg(1)%ii) .ne. 3) print*,"101"
if(size(trg(2)%obj) .ne. 3) print*,"102"
if(size(trg(2)%obj(1)%msg) .ne. 2) print*,"103"
if(size(trg(2)%obj(2)%msg) .ne. 3) print*,"104"
if(size(trg(2)%obj(3)%msg) .ne. 4) print*,"105"
if(len(trg(2)%obj(1)%msg) /= 5) print*,"106"
if(len(trg(2)%obj(2)%msg) /= 6) print*,"107"
if(len(trg(2)%obj(3)%msg) /= 7) print*,"108"
if(any(trg(2)%obj(1)%msg /= "11111")) print*, 109
if(any(trg(2)%obj(2)%msg /= "222222")) print*, 110
if(any(trg(2)%obj(3)%msg /= "3333333")) print*, 111
if(any(trg(1)%ii /= 10)) print*, 112
if(any(trg(2)%ii /= 11)) print*, 113

select type(a => trg(2)%obj)
 type is(tt)
  if(size(a(1)%alc) .ne. 3) print*,"201"
  if(size(a(2)%alc) .ne. 4) print*,"202"
  if(size(a(3)%alc) .ne. 5) print*,"203"
  if(any(a(1)%alc /= 30)) print*, 204
  if(any(a(2)%alc /= 40)) print*, 205
  if(any(a(3)%alc /= 50)) print*, 206

 class default
  print*, "911"
end select
print*,"PASS"

contains
subroutine sub(dmy)
type(ty),intent(out) :: dmy(2)

allocate(dmy(1)%ii(3))
allocate(dmy(2)%ii(3))
allocate(tt::dmy(2)%obj(3))
allocate(character(len=5)::dmy(2)%obj(1)%msg(2))
allocate(character(len=6)::dmy(2)%obj(2)%msg(3))
allocate(character(len=7)::dmy(2)%obj(3)%msg(4))
dmy(1)% ii = 10
dmy(2)% ii = 11
dmy(2)%obj(1)%msg = "11111"
dmy(2)%obj(2)%msg = "222222"
dmy(2)%obj(3)%msg = "3333333"

select type(a => dmy(2)%obj)
 type is(tt)
  allocate(a(1)%alc(3))
  allocate(a(2)%alc(4))
  allocate(a(3)%alc(5))
  a(1)%alc = 30
  a(2)%alc = 40
  a(3)%alc = 50

 class default
  print*, "911"
end select
end subroutine
end
