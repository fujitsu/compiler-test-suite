type ty1
    integer :: i
end type
type, extends(ty1) :: ty2
    integer ::j
end type
type, extends(ty2) :: ty3
    integer :: k
end type
logical :: x
type(ty1),pointer :: a
type(ty3),pointer :: b
allocate(a)
allocate(b)
x = extends_type_of(a,b)
if(x.neqv..false.) print *,'err1'
if(same_type_as(a,b).neqv..false.) print *,'err2'
print *,'pass'
end
