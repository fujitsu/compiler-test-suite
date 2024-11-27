type node
  type(node),allocatable::node
end type

type(node)::obj

call sub(obj)

contains
subroutine sub(dmy)
type(node)::dmy
type(node),allocatable::fun
fun = dmy
end subroutine
end
