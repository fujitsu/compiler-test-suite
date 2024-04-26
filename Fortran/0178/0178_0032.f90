interface
elemental subroutine sub(i)
intent(in) :: i
end subroutine
end interface
integer :: arr(10),i(10)
call sub(arr)
i=111
j=i(1)
j=j
print *,'pass'
end
elemental subroutine sub(i)
intent(in) :: i
j=i
j=j
end subroutine
function   fun(i)
intent(in) :: i
j=i
j=j
fun=1
end function  
