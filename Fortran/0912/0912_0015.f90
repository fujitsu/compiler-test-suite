type NODE
  integer,allocatable::ii
  type(NODE),allocatable::node(:)
end type

type(NODE)::obj(2)

call sub(obj)

print*, "PASS"

contains
subroutine sub(dmy)
type(NODE),intent(out)::dmy(2)
type(NODE)::arg(2)

end subroutine
end
