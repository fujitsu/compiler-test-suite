call test01()
call test02()
print *,'pass'
end

module mod
intrinsic :: sizeof
type ty1
 character(100) :: cha(20)
end type
type ty2
 type(ty1) :: str(10)
end type
type(ty2) :: str2(10)
end 

subroutine test01()
use mod
interface
subroutine sub()
import ty2,ty1,sizeof
integer,parameter :: if1=sizeof(ty2(ty1("a")))
integer,parameter :: if2=sizeof(ty1("a"))
integer,parameter :: if3=sizeof((/ty2(ty1("a"))/))
integer,parameter :: if4=sizeof((/ty1("a")/))
end subroutine
end interface
integer,parameter :: if1=sizeof(ty2(ty1("a")))
integer,parameter :: if2=sizeof(ty1("a")) 
integer,parameter :: if3=sizeof((/ty2(ty1("a"))/))
integer,parameter :: if4=sizeof((/ty1("a")/)) 
if (if1 .ne.20000 ) print *,"fail"
if (if2 .ne.2000 ) print *,"fail"
if (if3 .ne.20000 ) print *,"fail"
if (if4 .ne.2000 ) print *,"fail"

if (sizeof(ty2(ty1("a"))) .ne.20000 ) print *,"fail"
if (sizeof(ty1("a")) .ne.2000 ) print *,"fail"
if (sizeof((/ty2(ty1("a"))/)) .ne.20000 ) print *,"fail"
if (sizeof((/ty1("a")/)) .ne.2000 ) print *,"fail"
end

subroutine test02()
use mod,only:sizeofx=>sizeof,ty2,ty1
interface
subroutine sub()
import ty2,ty1,sizeofx
integer,parameter :: if1=sizeofx(ty2(ty1("a")))
integer,parameter :: if2=sizeofx(ty1("a"))
integer,parameter :: if3=sizeofx((/ty2(ty1("a"))/))
integer,parameter :: if4=sizeofx((/ty1("a")/))
end subroutine
end interface
integer,parameter :: if1=sizeofx(ty2(ty1("a")))
integer,parameter :: if2=sizeofx(ty1("a"))
integer,parameter :: if3=sizeofx((/ty2(ty1("a"))/))
integer,parameter :: if4=sizeofx((/ty1("a")/))
if (if1 .ne.20000 ) print *,"fail"
if (if2 .ne.2000 ) print *,"fail"
if (if3 .ne.20000 ) print *,"fail"
if (if4 .ne.2000 ) print *,"fail"

if (sizeofx(ty2(ty1("a"))) .ne.20000 ) print *,"fail"
if (sizeofx(ty1("a")) .ne.2000 ) print *,"fail"
if (sizeofx((/ty2(ty1("a"))/)) .ne.20000 ) print *,"fail"
if (sizeofx((/ty1("a")/)) .ne.2000 ) print *,"fail"
end

