call sub()
print *,'pass'
end
subroutine sub()
type ty1
integer :: a(10) =1
integer :: b(10) =1
integer :: c(10) =1
integer :: d(10) =1
end type
type ty2
type(ty1) :: aaa(100)
end type
type(ty2) :: str(100)
str(1)%aaa(1)%a(1)=1
end
