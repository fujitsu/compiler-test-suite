type tt
integer,allocatable:: alc(:)
end type

type, EXTENDS(tt)::ty
integer::a
end type

class(tt),allocatable :: obj1(:,:)
type(tt),pointer :: obj2(:,:)

allocate(obj1(3,3))
allocate(obj2(5,6))

allocate(obj1(1,2)%alc(2))
allocate(obj1(2,3)%alc(3))

obj1(1,2)%alc = 7
obj1(2,3)%alc = 8

allocate(obj2(1,1)%alc(2))
allocate(obj2(3,3)%alc(2))
allocate(obj2(5,5)%alc(3))

obj2(1,1)%alc = 4
obj2(3,3)%alc = 5
obj2(5,5)%alc = 6

obj1 = obj2(1:5:2,1:5:2)
if(size(obj1) /= 9) print*, 101,size(obj1)
if(obj1(1,1)%alc(1) /= 4) print*,102
if(obj1(2,2)%alc(2) /= 5) print*,103
if(obj1(3,3)%alc(2) /= 6) print*,104

select type (obj1)
type is (tt)
print*, "PASS"
class default
    print*,"ERROR"
end select
end