integer :: i(10)
type ty1
integer :: arr(10)
end type
type(ty1) :: str
str%arr=(/(j,j=1,10)/)
i= sub(str%arr)
if (i(2).ne.2) print *,'err'
print *,'pass'
contains
elemental function   sub(i)
intent(in) :: i
sub=i
end function
end

