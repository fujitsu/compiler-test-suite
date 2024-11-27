integer :: arr(3)
call sub(arr)        
contains
subroutine sub(x)
integer,contiguous :: x(*)
end subroutine
end
