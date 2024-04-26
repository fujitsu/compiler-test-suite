print *,'pass'
end
subroutine suba(arr)
integer :: arr(:)
call sub(arr)
contains
subroutine sub(aaa)
integer :: aaa(10)
aaa(1)=1
end subroutine
end
