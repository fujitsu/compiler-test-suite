module mod
type ty1
private
 integer :: i=1,j=1,k=1
end type
end
subroutine sub()
use mod
type,extends(ty1) :: ty2
integer :: i=1,j=1,k=1
end type
type (ty2) :: j = ty2(i=1,k=2,j=3)
end
subroutine test01()
use mod
type,extends(ty1) :: ty2
integer :: i=1,j=1,k=1
end type
type (ty2) :: j = ty2(i=1,k=2+2,j=3)
end
subroutine test012()
use mod
type,extends(ty1) :: ty2
integer :: i=1,j=1,k=1
end type
type (ty2) :: j = ty2(i=1,k=2,j=3+2)
end
subroutine test013()
use mod
type,extends(ty1) :: ty2
integer :: i=1,j=1,k=1
end type
type (ty2) :: j = ty2(i=1,k=(2+2),j=3)
end
subroutine test014()
use mod
type,extends(ty1) :: ty2
integer :: i=1,j=1,k=1
end type
type (ty2) :: j = ty2(i=1,k=int(2+2),j=3)
end
subroutine test015()
use mod
type,extends(ty1) :: ty2
integer :: i=1,j=1,k=1
end type
type (ty2) :: j = ty2(k=2+2,i=1,j=3)
end

subroutine sub2()
use mod
type,extends(ty1) :: ty2
integer :: i=1,j=1,k=1
end type
type (ty2) :: j
j = ty2(i=1,k=2,j=3)
end
subroutine test03()
use mod
type,extends(ty1) :: ty2
integer :: i=1,j=1,k=1
end type
type (ty2) :: j
j = ty2(i=1,k=2+2,j=3)
end

call sub2()
call test01()
call test012()
call test013()
call test014()
call test015()
print *,'pass'
end
