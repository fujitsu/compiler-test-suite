print *,'pass'
end
subroutine suba(arr)
integer :: arr(:)
call sub(arr)
contains
subroutine sub(aaa)
integer :: aaa(10)
end subroutine
end
