interface
elemental subroutine sub(i)
intent(in) :: i
end subroutine
end interface
interface
elemental function   fun(i)
intent(in) :: i
integer :: fun
end function  
end interface
integer :: arr(10),i(10)
call sub(arr)
i= fun(arr)
i=i
print *,'pass'
end
elemental subroutine sub(i)
intent(in) :: i
end subroutine
elemental function   fun(i)
intent(in) :: i
integer :: fun
fun=1
end function  
