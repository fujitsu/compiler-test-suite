type :: str
  integer,allocatable :: i
end type
type(str) :: sss
sss = str(1)
print *,shape(str(1))
end
