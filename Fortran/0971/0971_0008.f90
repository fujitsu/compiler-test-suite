type ty0
  integer xx
end type
type,extends(ty0) :: ty1
  integer yy
end type

class(ty0),allocatable :: obj1, obj2
class(ty0),allocatable :: arr1(:), arr2(:)
class(*),allocatable :: obj3, obj4
class(*),allocatable :: arr3(:), arr4(:)
allocate(ty1 :: obj1, obj2)
allocate(ty1 :: arr1(2), arr2(2))
allocate(ty1 :: obj3, obj4)
allocate(ty1 :: arr3(2), arr4(2))
obj1%xx = 1
arr1%xx = 2

obj2 = obj1
arr2 = arr1
obj4 = obj3
arr4 = arr3

end
