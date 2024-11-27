type ty01
 integer :: ii01
end type
type, extends(ty01) :: ty02
end type
type (ty01) :: tt01
type (ty02) :: tt02
print *,extends_type_of(tt02, tt01)
end
