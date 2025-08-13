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
entry ent001()
str%al=(/ty1(1),ty1(2),ty1(3),ty1(4),ty1(5),ty1(6),ty1(7),ty1(8),ty1(9),ty1(10)/)
do i=1,10
 if (str%al(i)%a.ne.i) print *,'fail'
end do
str%al=(/(ty1(i),i=1,10)/)
do i=1,10
 if (str%al(i)%a.ne.i) print *,'fail'
end do
rewind 14
entry ent002()
write(14,*) str%al
entry ent003()
rewind 14
str%al=str%al
str%al=(/(str%al(i),i=1,10)/)
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
str%al2=(/str%al2(:)/)
str%al2=(/str%al2(a)/)
str%al2=(/(str%al2(:),i=1,1)/)
str%al2=(/(str%al2(a),i=1,1)/)
str%al2=(/((str%al2(i)),i=1,10)/)
str%al2=(/((/str%al2(i)/),i=1,10)/)
str%al2=(/(ty2(str0%al),i=1,10)/)

str%al2(a)=ty2(str0%al)
str%al2(a)=(/str%al2(:)/)
str%al2(a)=(/str%al2(a)/)
str%al2(a)=(/(str%al2(:),i=1,1)/)
str%al2(a)=(/(str%al2(a),i=1,1)/)
str%al2(a)=(/((str%al2(i)),i=1,10)/)
str%al2(a)=(/((/str%al2(i)/),i=1,10)/)
str%al2(a)=(/(ty2(str0%al),i=1,10)/)

str%al2(:)=(/str%al2(:)/)
str%al2(:)=(/str%al2(a)/)
str%al2(:)=(/(str%al2(:),i=1,1)/)
str%al2(:)=(/(str%al2(a),i=1,1)/)
str%al2(:)=(/((str%al2(i)),i=1,10)/)
str%al2(:)=(/((/str%al2(i)/),i=1,10)/)
str%al2(:)=(/(ty2(str0%al),i=1,10)/)

str%al2(:)=ty2(str0%al(:))
str%al2(a)=ty2(str0%al(a))
write(14,*) str%al2(1)%al(:)
write(14,*) str%al2(1)%al(a)
write(14,*) str%al2(1)%al
write(14,*) str%al2(1)%al(1)
str%al2=str%al2
end
