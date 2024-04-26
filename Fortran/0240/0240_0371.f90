call s()
print *,'pass'
end
subroutine s()
interface
function sum(i,j) result(k)
integer :: i,j,k
end function
end interface
if (sum(3,2).ne.10   )print *,'err'
end
function sum(i,j) result(k)
integer :: i,j,k
k=i*j+4
end function
