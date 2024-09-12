type ty1
 integer :: a,b,c
end type
type(ty1):: t
t = ty1(c=1,b=2,a=3)
print *,'pass'
end
