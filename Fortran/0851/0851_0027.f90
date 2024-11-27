subroutine sub()
type ty1
procedure(func),pointer,nopass :: ifun
end type
type (ty1) :: str
integer :: arr(10,10)
arr=1
i=str%ifun(arr)
contains
function func(arr)
integer :: arr(100)
func=1
end
end
print *,'pass'
end
