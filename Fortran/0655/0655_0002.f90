call test01()
call test02()
print *,'pass'
end

subroutine test01()
type ty1
 integer a
end type
type ty2
 type(ty1),allocatable,dimension(:) :: al
end type
type(ty2) :: str
allocate(str%al(10))
str%al=ty1(1)
write(11,*) str%al
str%al=str%al
call sub(str%al)
deallocate(str%al)
contains
subroutine sub(sss)
type(ty1) :: sss(:)
sss=ty1(10)
end subroutine
end

subroutine test02()
type ty1
 integer a
end type
type ty2
 type(ty1),allocatable,dimension(:) :: al
end type
type ty3
 type(ty2),allocatable,dimension(:) :: al2
end type
type(ty3) :: str
type(ty2) :: str0
integer::a(10)/10*1/
allocate(str0%al(10))
str0%al=ty1(1)
allocate(str%al2(10))
do i=1,10
allocate(str%al2(i)%al(10))
str%al2(i)%al=ty1(1)
end do
str%al2=ty2(str0%al)
str%al2(:)=ty2(str0%al(:))
str%al2(a)=ty2(str0%al(a))
write(11,*) str%al2(1)%al(:)
write(11,*) str%al2(1)%al(a)
write(11,*) str%al2(1)%al
write(11,*) str%al2(1)%al(1)
str%al2=str%al2
end
