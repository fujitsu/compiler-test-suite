call test01()
call test02()
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
integer,parameter :: if1=sizeof(ty2(ty1("a")))
integer,parameter :: if2=sizeof(ty1("a")) 
integer,parameter :: if3=sizeof((/ty2(ty1("a"))/))
integer,parameter :: if4=sizeof((/ty1("a")/)) 
if (if1 .ne.20000 ) call errtra
if (if2 .ne.2000 ) call errtra
if (if3 .ne.20000 ) call errtra
if (if4 .ne.2000 ) call errtra

if (sizeof(ty2(ty1("a"))) .ne.20000 ) call errtra
if (sizeof(ty1("a")) .ne.2000 ) call errtra
if (sizeof((/ty2(ty1("a"))/)) .ne.20000 ) call errtra
if (sizeof((/ty1("a")/)) .ne.2000 ) call errtra
end

subroutine test02()
character(20000),parameter :: cha="a"
integer,parameter :: if1 = sizeof(cha)
integer,parameter :: if2 = sizeof((/cha/))
integer,parameter :: if3 = sizeof((/(cha,i=1,10)/))
integer,parameter :: if4 = sizeof((/(cha,i=1,10000)/))
end
