type tt
integer,allocatable:: alc(:)
end type

type, EXTENDS(tt)::ty
integer , allocatable::a
end type

class(tt),allocatable :: obj1(:,:)
class(tt),allocatable :: obj2(:,:)

allocate(ty::obj1(5,6))
allocate(ty::obj2(5,6))

allocate(obj1(1,2)%alc(2))
allocate(obj1(2,3)%alc(3))

obj1(1,2)%alc = 7
obj1(2,3)%alc = 8

allocate(obj2(1,1)%alc(2))
allocate(obj2(3,3)%alc(2))
allocate(obj2(5,5)%alc(3))

select type (obj1)
  type is (ty)
    allocate(obj1(1,1)%a)
    allocate(obj1(3,3)%a)
    allocate(obj1(5,5)%a)
    obj1(1,1)%a=6
    obj1(3,3)%a=7
    obj1(5,5)%a=8
  class default
    print*,201
end select

select type (obj2)
  type is (ty)
    allocate(obj2(1,1)%a)
    allocate(obj2(3,3)%a)
    allocate(obj2(5,5)%a)
    obj2(1,1)%a=2
    obj2(3,3)%a=3
    obj2(5,5)%a=5
  class default
    print*,202
end select

obj2(1,1)%alc = 4
obj2(3,3)%alc = 5
obj2(5,5)%alc = 6

obj1 = obj2(1:5:2,1:5:2)
if(size(obj1) /= 9) print*, 101,size(obj1)
if(obj1(1,1)%alc(1) /= 4) print*,102
if(obj1(2,2)%alc(2) /= 5) print*,103
if(obj1(3,3)%alc(2) /= 6) print*,104

select type (obj1)
type is (ty)
    if(obj1(1,1)%a .ne. 2) print*,105
    if(obj1(2,2)%a .ne. 3) print*,106
    if(obj1(3,3)%a .ne. 5) print*,107
print*, "PASS"
class default
    print*,"ERROR"
end select
end
