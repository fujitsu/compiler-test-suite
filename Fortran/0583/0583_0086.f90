type NODE
  integer,allocatable::value
  type(NODE),allocatable::node
end type

type(NODE),allocatable::obj

allocate(obj)
allocate(obj%value)
allocate(obj%node)
allocate(obj%node%value)
allocate(obj%node%node)
allocate(obj%node%node%value)
allocate(obj%node%node%node)
allocate(obj%node%node%node%value)

obj%value = 1
obj%node%value = 2
obj%node%node%value = 3
obj%node%node%node%value = 4

call sub(obj)

if (obj%value  /= 5) print*, 101
if (obj%node%value  /= 6) print*, 102
if (obj%node%node%value  /= 7) print*, 103
if (obj%node%node%node%value  /= 8) print*, 104
print*, "PASS"

contains
subroutine sub(dmy)
type(NODE),allocatable,intent(out)::dmy
type(NODE),allocatable::fun

allocate(dmy)

allocate(fun)
allocate(fun%value)
allocate(fun%node)
allocate(fun%node%value)
allocate(fun%node%node)
allocate(fun%node%node%value)
allocate(fun%node%node%node)
allocate(fun%node%node%node%value)

fun%value = 5
fun%node%value = 6
fun%node%node%value = 7
fun%node%node%node%value = 8

dmy = fun
end subroutine
end
