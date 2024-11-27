type b
  integer,allocatable :: i(:)
end type
type c
  type(b),allocatable::v1(:),v2(:)
end type

type (c),allocatable::y(:)
allocate(y(2))
call move_alloc(y(2)%v1,y(2)%v2)
print *,'pass'
end
