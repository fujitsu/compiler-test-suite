MODULE mod1
type NODE
  integer,allocatable::ii
  type(NODE),allocatable::node(:)
end type
END MODULE

USE Mod1
interface
subroutine sub()
end subroutine
end interface

call sub()
print*, "PASS"
end

subroutine sub()
use mod1
type(NODE),allocatable::dmy
type(NODE)::arg

arg%ii = 10
end subroutine

