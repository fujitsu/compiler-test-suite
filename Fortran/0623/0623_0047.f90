type ty1
 integer :: a
end type
type, extends(ty1) :: ty2
 integer :: b
end type
type (ty1) :: t1
type (ty2) :: t2
t2 = ty2(1,             b = 1)
t2 = ty2(ty1 = ty1(1),  b = 1)
t2 = ty2(a = 1,         b = 1)
print *,'pass'
end
