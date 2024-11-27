type NODE
  integer,allocatable::value
  type(NODE),allocatable::node
end type

type(NODE),allocatable::obj

obj%value = 1
obj%node%value = 2
obj%node%node%value = 3
obj%node%node%node%value = 4

call sub(obj)

contains
subroutine s(arg1)
type(NODE)::arg1
end

subroutine sub(dmy)
type(NODE)::dmy

if (dmy%value /= 1) print*, 101
if (dmy%node%value /= 2) print*, 102
if (dmy%node%node%value /= 3) print*, 103
if (dmy%node%node%node%value /= 4) print*, 104

call s((dmy))
print*, "PASS"
end subroutine
end
