use iso_c_binding, only: c_loc, c_associated
 
type node
 integer::x
 type(node), allocatable :: next(:,:)
end type
 
type(node), target :: obj1(4)
type(node), target :: obj2(4)

allocate(obj1(2)%next(3,3))
allocate(obj1(2)%next(2,2)%next(3,3))
allocate(obj1(2)%next(2,2)%next(2,2)%next(3,3))

allocate(obj2(2)%next(3,3))
allocate(obj2(2)%next(2,2)%next(3,3))
allocate(obj2(2)%next(2,2)%next(2,2)%next(3,3))

obj1 = obj2

if (c_associated(c_loc(obj1(2)%next(2,2)%next(2,2)%next), c_loc(obj2(2)%next(2,2)%next(2,2)%next)) .EQV. .TRUE.) print*, 911
print*, "PASS"
end
