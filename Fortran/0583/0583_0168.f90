type node
 integer, allocatable :: aa
 type(node),allocatable::next(:)
end type

type ty
 type(node)::obj
end type

type(ty) :: base
type(node) :: result(2,2)

allocate(base%obj%next(5))
allocate(base%obj%next(1)%aa)
allocate(base%obj%next(2)%next(4))
allocate(base%obj%next(2)%next(2)%aa)
allocate(base%obj%next(3)%next(4))
allocate(base%obj%next(3)%next(3)%next(4))
allocate(base%obj%next(3)%next(3)%next(3)%aa)
allocate(base%obj%next(4)%aa)

base%obj%next(1)%aa = 1
base%obj%next(2)%next(2)%aa = 2
base%obj%next(3)%next(3)%next(3)%aa = 3
base%obj%next(4)%aa = 4

result = reshape(base%obj%next, (/2,2/))

if (result(1,1)%aa /= 1) print*, 101
if (result(1,2)%next(3)%next(3)%aa /= 3) print*, 102, result(1,2)%aa
if (result(2,1)%next(2)%aa /= 2) print*, 103, result(2,1)%aa
if (result(2,2)%aa /= 4) print*, 104, result(2,2)%aa

if (.not.allocated(result(1,2)%next(3)%next)) print*, 105
if (loc(base%obj%next(3)%next(3)%next) == loc(result(1,2)%next(3)%next)) print*,106

if (ubound(result, 1) /= 2) print*, 911
if (ubound(result, 2) /= 2) print*, 912
if (ubound(shape(result), 1) /= 2) print*, 913
if (size(result) /= 4) print*, 914
print*, "PASS"
end
