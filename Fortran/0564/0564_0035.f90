type ty
integer,allocatable :: alc(:)
character(LEN=:),allocatable::msg(:,:)
integer,allocatable :: alc2
end type

type tt
type(ty),allocatable :: obj1(:,:)
type(ty),allocatable :: obj2(:,:)
type(ty),allocatable :: obj3(:,:)
end type

type tn
type(tt)::objTS, objTT, objTY
end type

type(tn)::objTN1,objTN2,objTN3

allocate(objTN2%objTS%obj2(3,4))
allocate(objTN1%objTT%obj1(3,3))

allocate(objTN1%objTT%obj1(1,2)%alc(2))
allocate(objTN1%objTT%obj1(2,2)%alc(2))
allocate(objTN1%objTT%obj1(1,2)%alc2)
allocate(objTN1%objTT%obj1(2,2)%alc2)
allocate(character(len=6)::objTN1%objTT%obj1(2,2)%msg(3,2))

objTN1%objTT%obj1(1,2)%alc = 8
objTN1%objTT%obj1(2,2)%alc = 9
objTN1%objTT%obj1(1,2)%alc2 = 10
objTN1%objTT%obj1(2,2)%alc2 = 11
objTN1%objTT%obj1(2,2)%msg = "NIGHT"

allocate(objTN2%objTS%obj2(1,2)%alc(2))
allocate(objTN2%objTS%obj2(2,2)%alc(2))
allocate(objTN2%objTS%obj2(1,2)%alc2)
allocate(objTN2%objTS%obj2(2,2)%alc2)
allocate(character(len=5)::objTN2%objTS%obj2(2,2)%msg(3,2))

objTN2%objTS%obj2(1,2)%alc = 4
objTN2%objTS%obj2(2,2)%alc = 5
objTN2%objTS%obj2(1,2)%alc2 = 6
objTN2%objTS%obj2(2,2)%alc2 = 7
objTN2%objTS%obj2(2,2)%msg = "HELLO"

objTN1%objTT%obj1 = objTN2%objTS%obj2
objTN3%objTY%obj3 = objTN1%objTT%obj1

if(size(objTN1%objTT%obj1) /= 12) print*, 101,size(objTN1%objTT%obj1)
if(LEN(objTN1%objTT%obj1(2,2)%msg(2,2)) /= 5) print*, 107
if(objTN1%objTT%obj1(1,2)%alc(1) /= 4) print*,102
if(objTN1%objTT%obj1(2,2)%alc(2) /= 5) print*,103
if(objTN1%objTT%obj1(1,2)%alc2 /= 6) print*,104
if(objTN1%objTT%obj1(2,2)%alc2 /= 7) print*,105
if(objTN1%objTT%obj1(2,2)%msg(2,2) /= "HELLO") print*,106

if(size(objTN3%objTY%obj3) /= 12) print*, 101,size(objTN3%objTY%obj3)
if(LEN(objTN3%objTY%obj3(2,2)%msg(2,2)) /= 5) print*, 107
if(objTN3%objTY%obj3(1,2)%alc(1) /= 4) print*,102
if(objTN3%objTY%obj3(2,2)%alc(2) /= 5) print*,103
if(objTN3%objTY%obj3(1,2)%alc2 /= 6) print*,104
if(objTN3%objTY%obj3(2,2)%alc2 /= 7) print*,105
if(objTN3%objTY%obj3(2,2)%msg(2,2) /= "HELLO") print*,106
print*, "PASS"
end
