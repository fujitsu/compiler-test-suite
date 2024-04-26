print *,'pass'
end
subroutine suba(arr)
type pdt(i)
integer,kind :: i=2
integer  :: arr(i)
end type
type (pdt) :: aaa
call sub(aaa)
contains
subroutine sub(aaa)
type (pdt) :: aaa
end subroutine
end
