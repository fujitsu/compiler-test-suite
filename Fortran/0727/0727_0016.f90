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
end type
contains
subroutine mod01_sub1()
type (ty3),allocatable,dimension(:) :: str
type (ty2),allocatable,dimension(:) :: str1
allocate(str1(1),str(1))
if (any(str1(1)%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
allocate(str(1)%s2,str(1)%s3)
if (any(str(1)%s1%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str(1)%s2%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str(1)%s2%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
if (any(str(1)%s3%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str(1)%s3%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
end subroutine
subroutine mod01_sub2()
type (ty2),allocatable,dimension(:) :: str
type (ty1) :: str1
allocate(str(1))
if (any(str(1)%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%i1.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
if (any(str1%j1.ne.(/(2,ii=1,10)/))) write(6,*) "NG"
end subroutine
end
subroutine test01()
use mod01
type (ty3) :: str
type (ty2),allocatable,dimension(:) :: str1
allocate(str1(1))
if (any(str1(1)%ik.ne.(/(1,ii=1,10)/))) write(6,*) "NG"
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
call test01()
print *,'pass'
end

