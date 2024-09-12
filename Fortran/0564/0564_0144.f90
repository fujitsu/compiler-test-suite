type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=:),allocatable::msg
end type

type ts
class(ty),allocatable :: obj1(:)
class(ty),allocatable :: obj2(:)
end type

type(ts) :: objTT, objTS

allocate(tt::objTS%obj2(3))

allocate(objTS%obj2(1)%alc(2))
allocate(objTS%obj2(2)%alc(2))
allocate(objTS%obj2(3)%alc(2))

select type (x => objTS%obj2)
type is (tt)
 allocate(character(len=3):: x(1)%msg)
 allocate(character(len=5):: x(2)%msg)
 allocate(character(len=3):: x(3)%msg)
 x(1)%msg = "abc"
 x(2)%msg = "abcde"
 x(3)%msg = "xyz"
class default
    print*,201
end select

objTS%obj2(1)%alc = 4
objTS%obj2(2)%alc = 5
objTS%obj2(3)%alc = 6

objTT%obj1 = objTS%obj2
if(size(objTT%obj1) /= 3) print*, 101
if(objTT%obj1(1)%alc(1) /= 4) print*,102
if(objTT%obj1(2)%alc(1) /= 5) print*,103
if(objTT%obj1(3)%alc(1) /= 6) print*,104

select type (x => objTT%obj1)
type is (tt)
  if(x(1)%msg .ne. "abc") print*,105
  if(x(2)%msg .ne. "abcde") print*,106
  if(x(3)%msg .ne. "xyz") print*,107
  if(len(x(1)%msg) .ne. 3) print*, 108
  if(len(x(2)%msg) .ne. 5) print*, 109
  if(len(x(3)%msg) .ne. 3) print*, 110
  print*, "PASS"
class default
    print*,"ERROR"
end select
end
