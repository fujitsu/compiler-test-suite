type ty1
 integer :: i
end type
type ,extends(ty1) :: ty2
end type
type(ty2) :: str=ty2(i=1)
print *,'pass'
end

