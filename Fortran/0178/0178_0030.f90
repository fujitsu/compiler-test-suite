print *,'pass'
end
subroutine suba(arr)
integer :: arr(10)
call sub(arr)
contains
subroutine sub(aaa)
integer :: aaa(:)
if (1.eq.2) aaa(1)=aaa(1)
end subroutine
end
