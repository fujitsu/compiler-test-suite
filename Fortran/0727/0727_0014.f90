
module mod01
type ty1
 integer,dimension(10) :: i1=1,j1=2
end type
type ty2
 integer,dimension(10) :: ik=1
end type
type ty3
 type (ty2) :: s1
 type (ty1),pointer :: s2,s3
 type (ty1) :: s4,s5
end type
contains
subroutine mod01_sub1()
type (ty3) :: str
type (ty2) :: str1
if (any(str1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str%s2,str%s3)
if (any(str%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s4%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s4%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
end subroutine
subroutine mod01_sub2()
type (ty2),pointer :: str
type (ty1),pointer :: str1
allocate(str,str1)
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
if (any(str%s4%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s4%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
call mod01_sub1()
call mod01_sub2()
end

module mod02
type ty1
 integer,dimension(10) :: i1=1,j1=2
 integer,dimension(10) :: i3=1
end type
type ty2
 integer,dimension(10) :: ik=1
 integer,dimension(10) :: ir=1
end type
type ty3
 type (ty2) :: s1
 type (ty1) :: s4,s5
 integer,dimension(10) :: ie=1
 type (ty1),pointer :: s2,s3
end type
contains
subroutine mod02_sub1()
type (ty3) :: str
type (ty2) :: str1
if (any(str1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str%s2,str%s3)
if (any(str%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s4%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s4%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
end subroutine
subroutine mod02_sub2()
type (ty2),pointer :: str
type (ty1) :: str1
allocate(str)
if (any(str%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
end subroutine
end
subroutine test02()
use mod02
type (ty3) :: str
type (ty2) :: str1
if (any(str1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str%s2,str%s3)
if (any(str%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s4%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s4%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
call mod02_sub1()
call mod02_sub2()
end

module mod03
integer :: iii=1
type ty1
 integer,dimension(10) :: i1=1
end type
integer :: ii=1
type ty2
 integer,dimension(10) :: ik=1
 integer,dimension(10) :: ir=1
 integer,dimension(10) :: ie=1
end type
type ty3
 type (ty2) :: s1
 type (ty1),pointer :: s2,s3
end type
contains
subroutine mod03_sub1()
type (ty3) :: str
type (ty2) :: str1
if (any(str1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str%s2,str%s3)
if (any(str%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s1%ir.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s1%ie.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
end subroutine
subroutine mod03_sub2()
type (ty2),pointer :: str
type (ty1) :: str1
allocate(str)
if (any(str%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%ir.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%ie.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
end subroutine
end
subroutine test03()
use mod03
type (ty3) :: str
type (ty2) :: str1
if (any(str1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str%s2,str%s3)
if (any(str%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
call mod03_sub1()
call mod03_sub2()
end

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
if (any(str%s4%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s4%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str%s5%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
call test01()
call test02()
call test03()
print *,'pass'
end

