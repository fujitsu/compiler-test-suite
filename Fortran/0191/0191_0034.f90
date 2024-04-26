integer :: arr(10),i(10)
arr=(/(j,j=1,10)/)
arr=arr
i= sub((/(j,j=1,10)/))
if (i(2).ne.2) print *,'err'
print *,'pass'
contains
elemental function   sub(i)
intent(in) :: i
sub=i
end function
end

