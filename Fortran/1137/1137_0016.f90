type t1
  integer,allocatable :: a       ! 3)
end type
type t2
  class(t1),allocatable :: b     ! 2)
end type
type(t2),pointer     :: aobj
type(t2) :: tobj
allocate(aobj,source=tobj)      ! 1) 2) 4)
print *,'sngg744j : pass'
end

