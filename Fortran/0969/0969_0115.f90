type ty01
 class(*), allocatable :: t01_cl_al01
end type

class(*), allocatable :: cl_al01

type (ty01) :: t01_01

t01_01 = ty01(cl_al01)

end
