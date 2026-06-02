type t1
  integer,allocatable :: a       ! 3)
end type
type t2
  class(t1),pointer     :: b     ! 2)
end type
type(t2),allocatable :: aobj
type(t2) :: tobj
allocate(aobj,source=tobj)      ! 1) 2) 4)
print *,'sngg743j : pass'
end

