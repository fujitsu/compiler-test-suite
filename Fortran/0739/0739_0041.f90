integer,pointer::a1,a2(:)
integer,allocatable::a3(:)
type x1
integer,pointer::a1,a2(:)
integer,allocatable::a3(:)
end type
type(x1)::v

allocate(a1,a2(3),a3(3));a1=101;a2=(/201,202,203/);a3=(/301,302,303/)
allocate(v%a1,v%a2(3),v%a3(3));v%a1=101;v%a2=(/201,202,203/);v%a3=(/301,302,303/)
call sub1(a1)
call sub2(a2)
call sub3(a3)
call sub1(v%a1)
call sub2(v%a2)
call sub3(v%a3)
print *,'pass'
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
 
