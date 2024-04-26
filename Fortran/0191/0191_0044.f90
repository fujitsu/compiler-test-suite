type ty1
 character(10) :: cha
end type
type(ty1) :: str(10),arr(10)
arr%cha='abcde12345'
str= sub(arr)
if (str(1)%cha.ne.'12345abcde') print *,'err'
print *,'pass'
contains
elemental type(ty1) function sub(i)
intent(in) :: i
type(ty1) :: i
sub%cha='12345'//i%cha(1:5)
end function
end

