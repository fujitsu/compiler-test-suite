integer :: arr(10),i(10)
call sub(arr)
i= fun(arr)
i=i
print *,'pass'
end

subroutine sub(i)
intent(in) :: i
end subroutine
function   fun(i)
intent(in) :: i
end function  
