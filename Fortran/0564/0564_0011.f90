type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type

type tt
class(ty),allocatable :: obj1(:)
end type

type tn
type(tt)::objTT
end type

type(tn)::objTN1

objTN1%objTT%obj1 = [ts([1,2],"HELLO", 10), ts([3,4],"WORLD", 20), ts([5,6],"NIGHT", 30)]

if(size(objTN1%objTT%obj1) /= 3) print*, 101,size(objTN1%objTT%obj1)
if(LEN(objTN1%objTT%obj1(2)%msg) /= 5) print*, 102
if(objTN1%objTT%obj1(1)%alc(1) /= 1) print*,102
if(objTN1%objTT%obj1(2)%alc(2) /= 4) print*,103
if(objTN1%objTT%obj1(3)%alc(2) /= 6) print*,104
if(objTN1%objTT%obj1(1)%alc2 /= 10) print*,105
if(objTN1%objTT%obj1(2)%alc2 /= 20) print*,106
if(objTN1%objTT%obj1(3)%alc2 /= 30) print*,107
if(objTN1%objTT%obj1(1)%msg /= "HELLO") print*,108
if(objTN1%objTT%obj1(2)%msg /= "WORLD") print*,109
if(objTN1%objTT%obj1(3)%msg /= "NIGHT") print*,110

select type (x => objTN1%objTT%obj1)
type is (ts)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
