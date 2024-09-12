type ty1
 integer :: a = 1
 integer :: b
 integer :: c = 1
end type
type (ty1) :: t
t = ty1(b = 3)
t = ty1(2,  3)
t = ty1(b = 3, c = 8)
print *,'pass'
end
