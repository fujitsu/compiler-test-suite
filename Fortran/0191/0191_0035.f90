integer :: arr(10),i(10)
arr=(/(j,j=1,10)/)
arr=arr
i= sub((/1,2,3,4,5,6,7,8,9,10/))
if (i(2).ne.2) print *,'err'
print *,'pass'
contains
elemental function   sub(i)
intent(in) :: i
sub=i
end function
end

