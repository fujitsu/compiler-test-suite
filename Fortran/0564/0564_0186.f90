type ty
integer,allocatable :: alc(:)
character(LEN=5)    :: msg(3,2)
integer,allocatable :: alc2
end type

type, extends(ty)::ts
 integer, allocatable :: a
end type

class(ty),pointer:: obj2(:,:)

allocate(ts::obj2(3,4))

allocate(obj2(1,2)%alc(2))
allocate(obj2(2,2)%alc(2))
allocate(obj2(1,2)%alc2)
allocate(obj2(2,2)%alc2)
select type(obj2)
type is (ts)
    allocate(obj2(1,2)%a)
    allocate(obj2(2,2)%a)
    obj2(1,2)%a=3
    obj2(2,2)%a=5
class default
 print*,201
end select

obj2(1,2)%alc = 4
obj2(2,2)%alc = 5
obj2(1,2)%alc2 = 6
obj2(2,2)%alc2 = 7
obj2(2,2)%msg = "HELLO"

call sub(obj2)

contains
subroutine sub(dmy2)
class(ty),allocatable::dmy1(:,:)
class(ty),pointer::dmy2(:,:)

dmy1 = dmy2

if(size(dmy1) /= 12) print*, 101, size(dmy1)
if(dmy1(1,2)%alc(1) /= 4) print*,102
if(dmy1(2,2)%alc(2) /= 5) print*,103
if(dmy1(1,2)%alc2 /= 6) print*,104
if(dmy1(2,2)%alc2 /= 7) print*,105
if(dmy1(2,2)%msg(2,2) /= "HELLO") print*,106

select type (dmy1)
type is (ts)
    if(dmy1(1,2)%a .ne. 3) print*, 202
    if(dmy1(2,2)%a .ne. 5) print*, 203
    print*, "PASS"
class default
        print*,"ERROR"
end select
end subroutine
end
