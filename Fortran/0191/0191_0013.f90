type ty1
 character :: cha
end type
type(ty1) :: str(10),arr(10)
arr%cha='a'
str= sub(arr)
print *,'pass'
contains
elemental type(ty1) function sub(i)
intent(in) :: i
type(ty1) :: i
sub=i
end function
end

