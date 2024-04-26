integer :: arr(10),i(10)
call sub(arr)
i= fun(arr)
i=i
print *,'pass'
contains
elemental subroutine sub(i)
intent(in) :: i
end subroutine
elemental function   fun(i)
intent(in) :: i
end function  
end
