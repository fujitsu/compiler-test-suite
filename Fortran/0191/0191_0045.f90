character(kind=4) :: i(10),arr(10)
arr=4_'a'
i= sub(arr)
print *,'pass'
contains
impure elemental  character(kind=4) function   sub(i)
intent(in) :: i
character(kind=4) :: i
sub=i
end function
end
