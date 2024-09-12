integer a2
type ty1
 integer :: a1
 integer :: a2
end type
type(ty1) :: str
type ty2
 integer :: a1
 integer :: a2
end type
type(ty2) :: str2
str2=ty2(a1=1,a2=1)
str=ty1(1,a2=1)
print *,"pass"
end
