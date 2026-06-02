module mod1
type ty
character(LEN=6)::msg
end type

interface
subroutine fun(dmy1, dmy2, xx)
import::ty
integer:: xx(:)
type(ty),allocatable :: dmy1(:)
class(ty),pointer,intent(in) :: dmy2(:)
end subroutine
end interface

type(ty), allocatable :: obj1(:)
class(ty), pointer:: obj2(:)

contains
subroutine sub (ii)
integer::ii(:)
allocate(obj1(3))
allocate(obj2(3))

obj1(1)%msg = "DREAM"
obj1(2)%msg = "NIGHT"
obj1(3)%msg = "NIGHP"

obj2(1)%msg = "HELLO"
obj2(2)%msg = "WORLD"
obj2(3)%msg = "TESTS"

if(ii(1) /= 1) print*, 121
if(ii(2) /= 2) print*, 122

call fun (obj1, obj2, ii)

if(size(obj1) /= 3) print*, 101, size(obj1)
if(obj1(1)%msg /= "HELLO") print*,110
if(obj1(2)%msg /= "WORLD") print*,111
if(obj1(3)%msg /= "TESTS") print*,113
print*, "PASS"
end subroutine
end module

program main
USE mod1
integer::nn(3)

nn(1) = 1
nn(2) = 2
nn(3) = 3

call sub(nn)
end program

subroutine fun(dmy1, dmy2, xx)
use mod1
integer:: xx(:)
type(ty),allocatable :: dmy1(:)
class(ty),pointer,intent(in) :: dmy2(:)

dmy1 = dmy2(xx)
end subroutine

