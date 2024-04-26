integer :: arr(10),i(10)
arr=(/(j,j=1,10)/)
i= sub(arr+1)
if (i(2).ne.3) print *,'err'
print *,'pass'
contains
elemental function   sub(i)
intent(in) :: i
sub=i
end function
end

