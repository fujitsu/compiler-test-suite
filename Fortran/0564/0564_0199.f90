subroutine sub
type ty
integer,allocatable :: alc(:)
character(LEN=:),allocatable::msg(:,:)
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type


class(ty),allocatable :: obj1(:,:)
class(ty),allocatable :: obj3(:,:)
type(ty),pointer :: obj2(:,:)

allocate(ts::obj1(3,3))
allocate(ts::obj3(3,3))
allocate(obj2(3,4))

allocate(obj2(1,2)%alc(2))
allocate(obj2(2,2)%alc(2))
allocate(obj2(1,2)%alc2)
allocate(obj2(2,2)%alc2)
allocate(character(len=5)::obj2(2,2)%msg(3,2))

allocate(obj1(1,2)%alc(2))
allocate(obj1(2,3)%alc(3))
allocate(obj1(1,2)%alc2)
allocate(obj1(2,3)%alc2)
allocate(character(len=5)::obj1(2,2)%msg(2,3))

obj1(1,2)%alc = 7
obj1(2,3)%alc = 8
obj1(1,2)%alc2 = 9
obj1(2,3)%alc2 = 10
obj1(2,2)%msg = "WORLD"

obj2(1,2)%alc = 4
obj2(2,2)%alc = 5
obj2(1,2)%alc2 = 6
obj2(2,2)%alc2 = 7
obj2(2,2)%msg = "HELLO"

obj1 = obj2
obj3 = obj1
if(size(obj3) /= 12) print*, 101, size(obj3)
if(obj3(1,2)%alc(1) /= 4) print*,102
if(obj3(2,2)%alc(2) /= 5) print*,103
if(obj3(1,2)%alc2 /= 6) print*,104
if(obj3(2,2)%alc2 /= 7) print*,105
if(obj3(2,2)%msg(2,2) /= "HELLO") print*,106

select type (obj3)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end subroutine

call sub
end
