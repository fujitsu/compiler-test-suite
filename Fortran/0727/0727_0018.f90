call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end

module mod01
type ty1
 integer,dimension(100):: i1=1,i2=2
end type
type ty2
 integer,dimension(100):: j1=1,j2=2
end type
type ty3a
 type (ty1) :: s1
 type (ty2) :: s2
end type 
type ty3b
 type (ty1),pointer :: s1
 type (ty2) :: s2
end type 
type ty3c
 type (ty1) :: s1
 type (ty2),pointer :: s2
end type 
type ty3d
 type (ty1),pointer :: s1
 type (ty2),pointer :: s2
end type 
end 

subroutine test01()
use mod01
type (ty1) :: str1
type (ty2) :: str2
type (ty3a):: str3
type (ty3b):: str4
type (ty3c):: str5
type (ty3d):: str6
allocate(str4%s1,str5%s2,str6%s1,str6%s2)
if (any(str1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
end
subroutine test02()
use mod01
type (ty3a):: str3
type (ty3b):: str4
type (ty1) :: str1
type (ty3c):: str5
type (ty2) :: str2
type (ty3d):: str6
allocate(str4%s1,str5%s2,str6%s1,str6%s2)
if (any(str1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
end
subroutine test03()
use mod01
type (ty3d):: str6
type (ty3a):: str3
type (ty1) :: str1
type (ty3b):: str4
type (ty3c):: str5
type (ty2) :: str2
allocate(str4%s1,str5%s2,str6%s1,str6%s2)
if (any(str1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
end
subroutine test04()
use mod01
type (ty3d):: str6
type (ty3a):: str3
type (ty3b):: str4
type (ty3c):: str5
type (ty2) :: str2
type (ty1) :: str1
allocate(str4%s1,str5%s2,str6%s1,str6%s2)
if (any(str1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
end
subroutine test05()
use mod01
type (ty3d):: str6
type (ty3a):: str3
type (ty3b):: str4
type (ty3c):: str5
type (ty2) :: str2
type (ty1) :: str1
data ip/1/
allocate(str4%s1,str5%s2,str6%s1,str6%s2)
if (any(str1%i1.ne.(/(ip,ii=1,100)/))) write(6,*) "NG"
if (any(str1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str3%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str4%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str5%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s1%i2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j1.ne.(/(1,ii=1,100)/))) write(6,*) "NG"
if (any(str6%s2%j2.ne.(/(2,ii=1,100)/))) write(6,*) "NG"
end
