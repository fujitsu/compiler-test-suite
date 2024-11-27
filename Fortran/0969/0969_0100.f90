type ty01
 integer :: i01
end type

type(ty01) :: t01

t01 = ty01(1)
t01 = ty01(merge(1, 1, .true.))


end
