print *,'pass'
end
subroutine suba(arr)
integer :: arr(10)
call sub(arr)
contains
subroutine sub(aaa)
integer :: aaa(:)
end subroutine
end
