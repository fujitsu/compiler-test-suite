subroutine sub()
type ty1
sequence
integer :: a01 =123
end type
type (ty1) :: str1(2),str2
equivalence(str1(1),str2)
end subroutine
call sub()
print *,'pass'
end

