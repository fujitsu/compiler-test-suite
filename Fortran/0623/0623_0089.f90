type ty1
 type(ty2),pointer :: i
end type

type ty2
 integer :: aaa
end type

type (ty1) :: str
print *,"pass"
end
