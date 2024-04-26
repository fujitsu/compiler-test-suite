type ty
integer,allocatable :: alc
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type

class(ty),allocatable :: obj1(:)
class(ty),pointer :: obj2(:)

allocate(ts::obj1(2))
allocate(obj2(2))

allocate(obj2(1)%alc)
allocate(obj2(2)%alc)
allocate(obj2(1)%alc2)
allocate(obj2(2)%alc2)

obj1 = obj2

select type (obj1)
type is (ty)
    print*, "pass"
class default
        print*,"ERROR"
end select
end
