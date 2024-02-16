call sub()
call sub2()
call sub3()
call sub4()
call sub5()
print *,"pass"
end

subroutine sub()
type ty1
 integer :: ip
end type
type (ty1) :: str
end subroutine

subroutine sub2()
type ty1
 integer :: ip
end type
type (ty1),pointer :: str
end subroutine

subroutine sub3()
type ty1
 integer,pointer :: ip
end type
type (ty1) :: str
end subroutine

subroutine sub4()
type ty0
 integer,pointer :: ip
end type
type ty1
 type (ty0) :: sss
end type
type (ty1) :: str
end subroutine

subroutine sub5()
type ty0
 integer :: iii
 type(ty0),pointer :: ip
end type
type ty1
 type (ty0) :: sss
end type
type (ty1) :: str
end subroutine

