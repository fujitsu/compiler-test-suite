type ty1
 type (ty2),pointer :: aaa1
end type
type ty2
 type (ty3),pointer :: aaa2
end type
type ty3
 integer :: aaa
end type
type (ty1) :: sss
call subbb(sss)
print *,'pass'
end
subroutine subbb(sss)
type ty1
 type (ty2),pointer :: aaa1
end type
type ty2
 type (ty3),pointer :: aaa2
end type
type ty3
 integer :: aaa
end type
type (ty1) :: sss
end
