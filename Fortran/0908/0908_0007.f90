integer :: arr(3)
call sub(arr)        
contains
subroutine sub(x)
integer,contiguous :: x(3)
end subroutine
end
