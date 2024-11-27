call test01()
print *,'pass'
end

module mod01
integer(kind=4),dimension(10,100),parameter:: ii=reshape((/(i,i=1,1000)/),(/10,100/))
integer(kind=4),dimension(10,100):: jj=reshape((/(i,i=1,1000)/),(/10,100/))
type ty1
 integer(kind=4),dimension(10,100):: i1=ii
 integer(kind=8),dimension(10,100):: i2=ii+10
end type
type ty2
 integer,dimension(100):: j1=1
 character,dimension(100):: j2='a'
 character(len=3),dimension(100):: j3='123'
end type
type ty3
 type (ty1) :: s1(3)
 type (ty2) :: s2(3)
end type 
end 

subroutine test01()
use mod01
integer(kind=4),dimension(10,100):: kk
type (ty3):: str1
type (ty3),pointer:: str2
kk=reshape((/(i,i=1,1000)/),(/10,100/))
allocate(str2)
end

