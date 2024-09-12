type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type tt
type(ty),allocatable :: obj1(:,:)
end type

type(tt)::objTS, objTT
allocate(objTT%obj1(3,4))

allocate(objTT%obj1(1,2)%alc(2))
allocate(objTT%obj1(2,3)%alc(3))
allocate(objTT%obj1(1,2)%alc2)
allocate(objTT%obj1(2,3)%alc2)

objTT%obj1(1,2)%alc = 7
objTT%obj1(2,3)%alc = 8
objTT%obj1(1,2)%alc2 = 9
objTT%obj1(2,3)%alc2 = 10
objTT%obj1(2,2)%msg = "WORLD"

call sub(objTT%obj1, 3)

contains
subroutine sub(dmy1, n)
type(ty),allocatable::dmy1(:,:)
integer::n
type(ty)::dmy2(1:3,n)

allocate(dmy2(1,2)%alc(2))
allocate(dmy2(2,2)%alc(3))
allocate(dmy2(1,2)%alc2)
allocate(dmy2(2,2)%alc2)

dmy2(1,2)%alc = 4
dmy2(2,2)%alc = 5
dmy2(1,2)%alc2 = 6
dmy2(2,2)%alc2 = 7
dmy2(2,2)%msg = "HELLO"

dmy1 = dmy2
if(size(dmy1) /= 9) print*, 101 
if(dmy1(1,2)%alc(1) /= 4) print*,102
if(dmy1(2,2)%alc(2) /= 5) print*,103
if(dmy1(1,2)%alc2 /= 6) print*,104
if(dmy1(2,2)%alc2 /= 7) print*,105
if(dmy1(2,2)%msg(2,2) /= "HELLO") print*,106
print*, "PASS"
end subroutine
end
