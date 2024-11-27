call test01()
print *,'pass'
end

module mod01
type ty1
 integer(kind=4),dimension(10):: i1=(/(i+4,i=1,10)/)
 integer(kind=2),dimension(10):: i2=(/(i+2,i=1,10)/)
 integer(kind=1),dimension(10):: i3=(/(i,i=1,10)/)
 integer(kind=8),dimension(10):: i4=(/(i+8,i=1,10)/)
end type
type ty2
 integer,dimension(10):: j1=1
 character,dimension(10):: j2='a'
 character(len=3),dimension(100):: j3='123'
end type
type ty3
 type (ty1) :: s1(10) = ty1(1,2,3,4)
 type (ty2) :: s2(10) = ty2(4,'1','aaa')
end type 
type (ty3),allocatable,dimension(:):: str3
end 

subroutine test01()
use mod01
type (ty3):: str1
type (ty3),pointer:: str2
allocate(str2)
allocate(str3(1))
do i=1,10
if (any(str1%s1(i)%i1.ne.str2%s1(i)%i1)) write(6,*) "NG"
if (any(str1%s1(i)%i2.ne.str2%s1(i)%i2)) write(6,*) "NG"
if (any(str1%s1(i)%i3.ne.str2%s1(i)%i3)) write(6,*) "NG"
if (any(str1%s1(i)%i4.ne.str2%s1(i)%i4)) write(6,*) "NG"
if (any(str1%s2(i)%j1.ne.str2%s2(i)%j1)) write(6,*) "NG"
if (any(str1%s2(i)%j2.ne.str2%s2(i)%j2)) write(6,*) "NG"
if (any(str1%s2(i)%j3.ne.str2%s2(i)%j3)) write(6,*) "NG"
if (any(str3(1)%s1(i)%i1.ne.str2%s1(i)%i1)) write(6,*) "NG"
if (any(str3(1)%s1(i)%i2.ne.str2%s1(i)%i2)) write(6,*) "NG"
if (any(str3(1)%s1(i)%i3.ne.str2%s1(i)%i3)) write(6,*) "NG"
if (any(str3(1)%s1(i)%i4.ne.str2%s1(i)%i4)) write(6,*) "NG"
if (any(str3(1)%s2(i)%j1.ne.str2%s2(i)%j1)) write(6,*) "NG"
if (any(str3(1)%s2(i)%j2.ne.str2%s2(i)%j2)) write(6,*) "NG"
if (any(str3(1)%s2(i)%j3.ne.str2%s2(i)%j3)) write(6,*) "NG"
end do
end

