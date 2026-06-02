integer :: i(10),arr(10)
arr=1
i= sub(arr)
print *,'pass'
contains
impure elemental function   sub(i)
common /com/ ii
intent(in) :: i
ii=1
sub=i
end function
end
