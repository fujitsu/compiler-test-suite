call test09()
call test01()
print *,"pass"
end

module mod09
type ty1
sequence
integer :: ii
real    :: jj
end type
end
module mod09a
type ty2
sequence
integer :: ii
real    :: jj
end type
end

subroutine test09()
use mod09
Use mod09a
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
end
subroutine subbb(ii,jj)
use mod09
Use mod09a
type(ty1),optional :: ii
type(ty2) ,optional:: jj
end subroutine

module mod01
type ty1
sequence
real    :: jj
end type
end
module mod01a
type ty2
sequence
integer :: ii
end type
end

subroutine test01()
use mod01
Use mod01a
interface
subroutine subbb(ii,jj)
import ty1
import ty2
type(ty1) ,optional:: ii
type(ty2) ,optional:: jj
end subroutine
end interface
type(ty1) :: ss
type(ty2) :: cc
call subbb(ss,cc)
end
