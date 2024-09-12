module mod
type ty1
sequence
 type (ty2),pointer :: aaa1
end type
type ty2
sequence
 type (ty3),pointer :: aaa2
end type
type ty3
sequence
 type (ty1),pointer :: aaa3
 integer   ,pointer :: aaa6
end type
end
use mod
type (ty1),pointer :: sss
allocate(sss)
allocate(sss%aaa1)
allocate(sss%aaa1%aaa2)
allocate(sss%aaa1%aaa2%aaa3)

call subbb(sss%aaa1)
call subbb1(sss%aaa1%aaa2%aaa3)
print *,'pass'
contains
subroutine subbb(sss)
use mod
type (ty2) :: sss
end subroutine

subroutine subbb1(sss)
use mod
type (ty1),pointer :: sss
end subroutine
end
