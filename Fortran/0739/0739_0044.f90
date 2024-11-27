integer,pointer::a1,a2(:)
integer,allocatable::a3(:)
type x1
sequence
integer,pointer::a1,a2(:)
integer,allocatable::a3(:)
end type
type(x1),allocatable::v(:)
allocate(v(1))
allocate(a1,a2(3),a3(3));a1=101;a2=(/201,202,203/);a3=(/301,302,303/)
allocate(v(1)%a1,v(1)%a2(3),v(1)%a3(3));v(1)%a1=101;v(1)%a2=(/201,202,203/);v(1)%a3=(/301,302,303/)
call xx(v,a1,a2,a3)
contains
subroutine xx(v,a1,a2,a3)
integer,pointer::a1,a2(:)
integer,allocatable::a3(:)
type x1
sequence
integer,pointer::a1,a2(:)
integer,allocatable::a3(:)
end type
type(x1),allocatable::v(:)

k=1
call sub1(a1)
call sub2(a2(1))
call sub3(a3(1))
call sub1(v(1)%a1)
call sub2(v(1)%a2(1))
call sub3(v(1)%a3(1))
call sub1(a1)
call sub2(a2(k))
call sub3(a3(k))
call sub1(v(k)%a1)
call sub2(v(k)%a2(k))
call sub3(v(k)%a3(k))
print *,'pass'
end subroutine
end
subroutine sub1(s)
integer s
if (s/=101)write(6,*) "NG"
end subroutine
subroutine sub2(a)
integer a(3)
if (any(a/=(/201,202,203/)))write(6,*) "NG"
end subroutine
subroutine sub3(a)
integer a(3)
if (any(a/=(/301,302,303/)))write(6,*) "NG"
end subroutine
 
