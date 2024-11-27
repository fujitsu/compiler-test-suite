module mod01
type ty1
 integer,dimension(10) :: i1=1,j1=2
end type
type ty2
 integer,dimension(10) :: ik=1
 type (ty3),pointer :: ss
end type
type ty3
 type (ty2) :: s1
 type (ty1),pointer :: s2,s3
end type
contains
subroutine mod01_sub1()
type (ty3) :: str
type (ty2) :: str1
if (any(str1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str1%ss)
allocate(str1%ss%s2,str1%ss%s3)
if (any(str1%ss%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%ss%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%ss%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str1%ss%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%ss%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
allocate(str%s2,str%s3)
if (any(str%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
end subroutine
subroutine mod01_sub2()
type (ty2) :: str
type (ty1) :: str1
if (any(str%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
end subroutine
end
subroutine test01()
use mod01
type (ty3) :: str
type (ty2) :: str1
if (any(str1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str%s2,str%s3)
if (any(str%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
call mod01_sub1()
call mod01_sub2()
end

use mod01
data iiii /1/
type (ty3) :: str
type (ty2) :: str1
if (any(str1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str1%ss)
allocate(str1%ss%s2,str1%ss%s3)
if (any(str1%ss%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%ss%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%ss%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str1%ss%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%ss%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
allocate(str%s2,str%s3)
if (any(str%s1%ik.ne.(/(1,ii=iiii,10)/))) write(6,*) "NG"
if (any(str%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
call test01()
print *,'pass'
end

