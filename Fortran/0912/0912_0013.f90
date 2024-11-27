type NODE
  integer,allocatable::value
  type(NODE),allocatable::node
end type

type(NODE),allocatable::obj

call sub(obj)
print*, "PASS"

contains
subroutine sub(dmy)
type(NODE),intent(out)::dmy
type(NODE),allocatable::fun
end subroutine
end
