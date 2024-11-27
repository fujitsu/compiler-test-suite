call test01()
call test02()
call test03()
print *,'pass'
end

module mod01
type ty1
 integer(kind=4),dimension(100):: i1=(/(i+4,i=1,100)/)
 integer(kind=2),dimension(100):: i2=(/(i+2,i=1,100)/)
 integer(kind=1),dimension(100):: i3=(/(i,i=1,100)/)
 integer(kind=8),dimension(100):: i4=(/(i+8,i=1,100)/)
end type
type ty2
 integer,dimension(100):: j1=1
 character,dimension(100):: j2='a'
 character(len=3),dimension(100):: j3='123'
end type
type ty3
 type (ty1) :: s1(10)
 type (ty2) :: s2(10)
end type 
end 

subroutine test01()
use mod01
type (ty3):: str1
type (ty3),pointer:: str2
allocate(str2)
do i=1,10
if (any(str1%s1(i)%i1.ne.str2%s1(i)%i1)) write(6,*) "NG"
if (any(str1%s1(i)%i2.ne.str2%s1(i)%i2)) write(6,*) "NG"
if (any(str1%s1(i)%i3.ne.str2%s1(i)%i3)) write(6,*) "NG"
if (any(str1%s1(i)%i4.ne.str2%s1(i)%i4)) write(6,*) "NG"
if (any(str1%s2(i)%j1.ne.str2%s2(i)%j1)) write(6,*) "NG"
if (any(str1%s2(i)%j2.ne.str2%s2(i)%j2)) write(6,*) "NG"
if (any(str1%s2(i)%j3.ne.str2%s2(i)%j3)) write(6,*) "NG"
end do
end

module mod02
type ty1
 integer(kind=4),dimension(100):: i1=(/(i+4,i=1,100)/)
 integer(kind=2),dimension(100):: i2=(/(i+2,i=1,100)/)
 integer(kind=1),dimension(100):: i3=(/(i,i=1,100)/)
 integer(kind=8),dimension(100):: i4=(/(i+8,i=1,100)/)
end type
type ty2
 integer,dimension(100):: j1=1
 character,dimension(100):: j2='a'
 character(len=3),dimension(100):: j3='123'
end type
type ty3
 type (ty1) :: s1(10)
 type (ty2) :: s2(10)
end type 
end 

subroutine test02()
use mod02
type (ty3):: str1(10)
type (ty3),pointer:: str2(:)
do i=1,10
allocate(str2(i))
do j=1,10
if (any(str1(i)%s1(j)%i1.ne.str2(i)%s1(j)%i1)) write(6,*) "NG"
if (any(str1(i)%s1(j)%i2.ne.str2(i)%s1(j)%i2)) write(6,*) "NG"
if (any(str1(i)%s1(j)%i3.ne.str2(i)%s1(j)%i3)) write(6,*) "NG"
if (any(str1(i)%s1(j)%i4.ne.str2(i)%s1(j)%i4)) write(6,*) "NG"
if (any(str1(i)%s2(j)%j1.ne.str2(i)%s2(j)%j1)) write(6,*) "NG"
if (any(str1(i)%s2(j)%j2.ne.str2(i)%s2(j)%j2)) write(6,*) "NG"
if (any(str1(i)%s2(j)%j3.ne.str2(i)%s2(j)%j3)) write(6,*) "NG"
end do
end do
end

module mod03
type ty1
 integer(kind=4),dimension(10):: i1=(/(i+4,i=1,10)/)
 integer(kind=2),dimension(10):: i2=(/(i+2,i=1,10)/)
 type (ty1) ,pointer :: sssss
 integer(kind=1),dimension(10):: i3=(/(i,i=1,10)/)
 integer(kind=8),dimension(10):: i4=(/(i+8,i=1,10)/)
end type
type ty2
 integer,dimension(10):: j1=1
 character,dimension(10):: j2='a'
 type (ty1) ,pointer :: sssss
 character(len=3),dimension(10):: j3='123'
end type
type ty3
 type (ty1) :: s1(5)
 type (ty2) :: s2(5)
end type 
type (ty3):: str1(3)
save str1
end 

subroutine test03()
use mod03
type (ty3),pointer:: str2(:)
do i=1,3
allocate(str2(i))
do j=1,5
if (any(str1(i)%s1(j)%i1.ne.str2(i)%s1(j)%i1)) write(6,*) "NG"
if (any(str1(i)%s1(j)%i2.ne.str2(i)%s1(j)%i2)) write(6,*) "NG"
if (any(str1(i)%s1(j)%i3.ne.str2(i)%s1(j)%i3)) write(6,*) "NG"
if (any(str1(i)%s1(j)%i4.ne.str2(i)%s1(j)%i4)) write(6,*) "NG"
if (any(str1(i)%s2(j)%j1.ne.str2(i)%s2(j)%j1)) write(6,*) "NG"
if (any(str1(i)%s2(j)%j2.ne.str2(i)%s2(j)%j2)) write(6,*) "NG"
if (any(str1(i)%s2(j)%j3.ne.str2(i)%s2(j)%j3)) write(6,*) "NG"
end do
end do
end
