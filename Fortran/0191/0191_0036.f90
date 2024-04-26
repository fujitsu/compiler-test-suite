integer :: arr(10),i(10)
arr=(/(j,j=1,10)/)
i= sub(ifun(arr(1:10)))
if (i(2).ne.2) print *,'err'
print *,'pass'
contains
elemental function   sub(i)
intent(in) :: i
sub=i
end function
function ifun(arr) result(aaa)
integer :: aaa(10),arr(10)
aaa=arr
end
end

