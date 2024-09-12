call test01()
call test02()
print *,"pass"
end

module mod01
type ty1
sequence
integer :: ii
real    :: jj
end type
type ty2
sequence
integer :: ii
real    :: jj
end type
contains
subroutine test01a()
interface
subroutine subbb(ii,jj)
import
type(ty1) ,optional:: ii
type(ty2) ,optional:: jj
end subroutine
end interface
type(ty1) :: ss
type(ty2) :: cc
call subbb(ss,cc)
end subroutine
end
subroutine subbb(ii,jj)
use mod01
type(ty1),optional :: ii
type(ty2) ,optional:: jj
end subroutine

subroutine test01()
use mod01
call test01a()
end subroutine

module mod02
integer ii
intrinsic int
external ext
common /com/ i
equivalence (ip,ij)
end module
subroutine test02()
use mod02
interface
subroutine aaa()
import ii
import int
import ext
import i
import ip
end subroutine
end interface
end subroutine
function ext()
ext=1
end 
