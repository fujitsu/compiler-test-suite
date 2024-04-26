module mod04
type ty1
 integer :: i(2)=(/(ia,ia=1,2)/)
end type
contains
subroutine sub1()
call isub1()
contains
subroutine isub1()
save
type (ty1) :: str2
end subroutine
end subroutine
end module
print *,'pass'
end


