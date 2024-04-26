module m1
type :: Base
end type Base

type,extends(Base) :: Base2
end type
end module

module m2
use m1,only:Base
type,extends(Base) :: Base2
end type

type,extends(Base2)::child
end type child
end

use m2
class(Base2),allocatable:: obj2
allocate(child::obj2)
print *,'pass'
end
