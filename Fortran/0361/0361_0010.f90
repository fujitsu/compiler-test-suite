call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

module mod
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
import ty2,ty1
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
use mod
interface
subroutine sub()
import ty2,ty1
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

module moda
type ty1
 character(100) :: cha(20)
end type
end

module mod01
use moda
type ty2
 type(ty1) :: str(10)
end type
type(ty2) :: str2(10)
end

subroutine test03()
use mod01
interface
subroutine sub()
import ty2,ty1
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

subroutine test04()
use mod01,only:ss2=>ty2,ty1
interface
subroutine sub()
import ss2,ty1
integer,parameter :: if1=sizeof(ss2(ty1("a")))
integer,parameter :: if2=sizeof(ty1("a"))
integer,parameter :: if3=sizeof((/ss2(ty1("a"))/))
integer,parameter :: if4=sizeof((/ty1("a")/))
end subroutine
end interface
integer,parameter :: if1=sizeof(ss2(ty1("a")))
integer,parameter :: if2=sizeof(ty1("a"))
integer,parameter :: if3=sizeof((/ss2(ty1("a"))/))
integer,parameter :: if4=sizeof((/ty1("a")/))
if (if1 .ne.20000 ) print *,"fail"
if (if2 .ne.2000 ) print *,"fail"
if (if3 .ne.20000 ) print *,"fail"
if (if4 .ne.2000 ) print *,"fail"

if (sizeof(ss2(ty1("a"))) .ne.20000 ) print *,"fail"
if (sizeof(ty1("a")) .ne.2000 ) print *,"fail"
if (sizeof((/ss2(ty1("a"))/)) .ne.20000 ) print *,"fail"
if (sizeof((/ty1("a")/)) .ne.2000 ) print *,"fail"
end

