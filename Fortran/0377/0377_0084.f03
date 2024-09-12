call test01()
print *,'pass'
end

subroutine test01()
ii  = func(null())
ii=ii
contains
function func(cha)
character(kind=4) :: cha
pointer :: cha
func=1
end function
end subroutine
