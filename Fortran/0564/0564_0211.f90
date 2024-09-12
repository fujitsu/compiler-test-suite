type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg
end type

class(ty),allocatable :: obj1(:,:)
class(ty),allocatable :: obj2(:,:)

allocate(tt::obj1(3,4))
allocate(ty::obj2(3,4))

allocate(obj2(1,1)%alc(2))
allocate(obj2(3,3)%alc(2))

allocate(obj1(1,2)%alc(2))
allocate(obj1(2,2)%alc(3))

obj1(1,2)%alc = 7
obj1(2,2)%alc = 8

obj2(1,1)%alc = 4
obj2(3,3)%alc = 5

obj1 = obj2
if(size(obj1) /= 12) print*, 101
if(obj1(1,1)%alc(1) /= 4) print*,102
if(obj1(3,3)%alc(1) /= 5) print*,103

select type (obj1)
type is (ty)
print*, "PASS"
type is (tt)
print*, "TT"
class default
    print*,"ERROR"
end select
end
