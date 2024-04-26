if (sum(1,2) /= 3) print *,'err'
print *,'pass'
contains
function sum(i,j) result(k)
integer :: i,j,k
k=i+j
end function
end
