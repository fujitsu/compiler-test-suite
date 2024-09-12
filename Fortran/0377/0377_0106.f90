call test1()
print *,"pass"
end

subroutine test1()
type ty1
 integer :: i
end type
type,extends(ty1) :: ty2
 integer :: j
end type
type ,extends(ty2) :: ty3
end type
type(ty3) :: str
str%i=1
str%ty1%i=1
str%ty2%i=1
str%ty2%ty1%i=1
end subroutine
