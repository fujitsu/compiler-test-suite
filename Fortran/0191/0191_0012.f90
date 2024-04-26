character :: i(10),arr(10)
arr='a'
i= sub(arr)
print *,'pass'
contains
impure elemental character function   sub(i)
intent(in) :: i
character :: i
sub=i
end function
end
