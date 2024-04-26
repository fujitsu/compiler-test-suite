type ty1
 character(10) :: cha
end type
type(ty1) :: str(10),arr(10)
arr%cha='abcde12345'
str= sub(arr,10)
if (str(1)%cha.ne.'12345abcde') print *,'err'
print *,'pass'
contains
elemental type(ty1) function sub(i,j)
intent(in) :: i,j
type(ty1) :: i
sub%cha='12345'(1:j-5)//i%cha(1:j-5)
end function
end

