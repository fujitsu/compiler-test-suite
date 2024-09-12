type NODE
  integer,allocatable::value
  type(NODE),allocatable::node
end type

type(NODE),allocatable::obj
type(NODE)::xx

allocate(obj)
allocate(obj%value)
allocate(obj%node)
allocate(obj%node%value)
allocate(obj%node%node)
allocate(obj%node%node%value)

obj%value = 1
obj%node%value = 2
obj%node%node%value = 3

xx = fun(obj)

if (xx%value  /= 1) print*, 101
if (xx%node%value  /= 2) print*, 102
if (xx%node%node%value  /= 3) print*, 103
print*, "PASS"

contains
function fun(dmy)
type(NODE),allocatable::dmy
type(NODE),allocatable::fun

allocate(fun)
allocate(fun%value)
allocate(fun%node)
allocate(fun%node%value)
allocate(fun%node%node)
allocate(fun%node%node%value)

fun%value = 4
fun%node%value = 5
fun%node%node%value = 6

fun = dmy
end function
end
