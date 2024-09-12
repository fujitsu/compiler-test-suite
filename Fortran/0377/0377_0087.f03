call test09()
call test01()
call test02()
call test03()
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
integer :: ii
real    :: jj
end type
end
module mod01a
type ty2
sequence
integer :: ii
real    :: jj
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

module mod02
type ty1
sequence
integer :: ii
real    :: jj
end type
end
module mod02a
use mod02
type ty2
sequence
integer :: ii
real    :: jj
end type
end

subroutine test02()
Use mod02a
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

module mod03
type ty1
sequence
integer :: ii
real    :: jj
end type
end
module mod03a
use mod03
end

subroutine test03()
Use mod03a
interface
subroutine subbb(ii,jj)
import ty1
type ty2
sequence
integer :: ii
real    :: jj
end type
type(ty1) ,optional:: ii
type(ty2) ,optional:: jj
end subroutine
end interface
type ty2
sequence
integer :: ii
real    :: jj
end type
type(ty1) :: ss
type(ty2) :: cc
call subbb(ss,cc)
end

