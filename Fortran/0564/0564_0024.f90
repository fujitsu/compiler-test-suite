type ty
integer,allocatable :: alc(:)
character(LEN=5),allocatable::msg(:)
end type

type, EXTENDS(ty) :: tt
end type

type ts
class(ty),allocatable :: obj1
type(tt),pointer :: obj2
end type

type(ts):: objTT, objTS

allocate(objTS%obj2)
allocate(objTS%obj2%alc(3))
allocate(objTS%obj2%msg(3))

objTS%obj2%alc(1) = 4
objTS%obj2%msg(1) = "JAPAN"
objTS%obj2%alc(2) = 5
objTS%obj2%alc(3) = 6
objTS%obj2%msg(3) = "CASES"

call sub(objTT%obj1, objTS%obj2)

contains
subroutine sub (obj1, obj2)
class(ty),allocatable:: obj1
class(tt):: obj2

obj1 = obj2
if(size(obj1%alc) /= 3) print*, 101, size(obj1%alc)
if(obj1%alc(1) /= 4) print*,102
if(obj1%msg(1) /= "JAPAN") print*,103
if(obj1%alc(2) /= 5) print*,104, obj1%alc(2)
if(obj1%alc(3) /= 6) print*,106
if(obj1%msg(3) /= "CASES") print*,107
select type (x => obj1)
type is (tt)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end subroutine
end
